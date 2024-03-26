#!/usr/bin/env python3
"""
Python function that returns all students sorted byaverage score:

args:
    mongo_collection
return:
    allstudent soorted ny average
"""
 all_students = list(mongo_collection.find())

    # Calculate average score for each student
    for student in all_students:
        total_score = sum(topic['score'] for topic in student['topics'])
        average_score = total_score / len(student['topics'])
        student['averageScore'] = round(average_score, 2)  # Round to two decimal places

    # Sort students by average score in descending order
    sorted_students = sorted(all_students, key=lambda x: x['averageScore'], reverse=True)

    # Return sorted list of students with their average scores included
    return sorted_students
