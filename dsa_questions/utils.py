from dsa_questions.models import Category, SubCategory

def all_categories():
    category = Category.objects.all()
    sub_category = SubCategory.objects.all()
    return {
        'category': category,
        'sub_category': sub_category,
    }