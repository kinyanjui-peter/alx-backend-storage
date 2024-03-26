#!/usr/bin/env python3
"""Python function that returns the list of school having a specific topic
args:
    mongo_collection
    topic
return:
     list of school having a specific topic
"""
import pymongo


def schools_by_topic(mongo_collection, topic):
    """returns the list of school having a specific topic"""
    if mongo_collection is None:
        return []
    if topic is None:
        return None
    filteredSchools = mongo_collection.find(
        {"topic": topic})
    return filteredSchools
