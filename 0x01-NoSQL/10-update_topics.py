#!/usr/bin/env python3
"""
A Python function that changes all topics of a school document based on the name
args:
    mongo_collection
    name
    topics
return
    updated school document
"""
import pymongo


def update_topics(mongo_collection, name, topics):
    """a function that returns an updated schhol document:"""
    if mongo_collection is None:
        return []

    if name is None:
        return None

    if topics is None:
        return []
    updatedDocs = mongo_collection.update_many(
        {"name": name},
        {"$set": {"topics": topics}},
        upsert=True
        )    


