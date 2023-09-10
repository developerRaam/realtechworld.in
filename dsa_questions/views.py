import json
from django.http import HttpResponse, JsonResponse
from django.shortcuts import render,redirect
from dsa_questions.models import *
from .utils import all_categories
from django.db.models import Q

# Create your views here.

#================================ Home Page =======================================
def DsaQuestionsHome(request):
    categories = all_categories()
    context = {
        'categories':categories,
    }
    return render(request, "dsa_questions/home.html",context)


#================================ Question view in another page =======================================
def QuestionView(request, slug):
    categories = all_categories()
    question = DsaQuestion.objects.get(slug=slug)
    context = {
        'categories':categories,
        'question':question,
    }
    return render(request, "dsa_questions/question-view.html",context)

#================================ Searching page =======================================
def Searching(request):
    if request.method == 'GET':
        try:
            search_bar = request.GET['q']
            if search_bar == "":
                return redirect('/problems/')
            # Split the search sentence into words
            search_words = search_bar.split(' ')

            collect_questions = []
            unique_question = []

            questions = DsaQuestion.objects.all()
            tags = SelectTags.objects.all()
            
            # filter question by search bar word by word
            for word in search_words:
                collect_question = questions.filter(question_name__icontains=word)
                collect_questions.extend(collect_question)
            
            # iterate question to make unique
            for row in collect_questions:
                if row not in unique_question:
                    unique_question.append(row)
                        
            categories = all_categories() # categories function

            context={
                'categories':categories,
                "questions":unique_question,
                'tags':tags,
                "search_bar":search_bar,
            }
            return render(request, "dsa_questions/search.html", context)
        except KeyError:
            return redirect('/problems/')  # Handle missing parameters or errors
    else:
        raise HttpResponse("page not found")
            

#================================  filter questions via ajax =======================================
def Filter_By_Category(request):
    difficulty_Items = json.loads(request.POST.get('difficulty_Items'))
    topics_Items = json.loads(request.POST.get('topics_Items'))
    tags = SelectTags.objects.all()
    
    questions = []  # Create an empty list to collect questions

    # Start with an empty queryset to build upon
    filtered_questions = DsaQuestion.objects.none()

    # Filter based on difficulty
    for d in difficulty_Items:
        cat_id = int(d)
        filtered_questions |= DsaQuestion.objects.filter(cat_id_id=cat_id)

    # Filter based on topics
    for t in topics_Items:
        topic_id = int(t)
        filtered_questions |= DsaQuestion.objects.filter(sub_cat_id_id=topic_id)

    # If both difficulty and topics are selected, use AND condition
    if difficulty_Items and topics_Items:
        q_objects = Q()
        for d in difficulty_Items:
            cat_id = int(d)
            for t in topics_Items:
                topic_id = int(t)
                q_objects |= Q(cat_id_id=cat_id, sub_cat_id_id=topic_id)
        filtered_questions &= DsaQuestion.objects.filter(q_objects)

    # Convert queryset to list of dictionaries
    questions = [
        {
            'id': question.id,
            'question_name': question.question_name,
            'slug': question.slug,
        }
        for question in filtered_questions
    ]
    tags = [
        {
        'question_id':tag.question_id_id,
        'tag_name':tag.tag.tag_name
    }
    for tag in tags
    ]
    
    return JsonResponse({'success': True, 'response': questions,'tags':tags})


#============================== show questions via ajax ==========================================
def Show_Questions(self):
    filtered_questions = DsaQuestion.objects.all().order_by('-id')[:50]
    tags = SelectTags.objects.all()
    questions = [
        {
            'id': question.id,
            'question_name': question.question_name,
            'slug': question.slug,
        }
        for question in filtered_questions
    ]
    tags = [
        {
        'question_id':tag.question_id_id,
        'tag_name':tag.tag.tag_name
    }
    for tag in tags
    ]
    return JsonResponse({'success': True, 'response': questions, 'tags':tags})