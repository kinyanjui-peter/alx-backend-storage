#!/usr/bin/env python3
"""
a Python function that inserts a new document in a collection based on kwargs:
args:
    mongo_collection: collection
    **kwargs: additional arguments
return:
    new_id
"""
import pymongo


def insert_school(mongo_collection, **kwargs):
    """a function that inserts a new document
    in a collection based on kwargs
    """
    if mongo_collection is None:
        """return empty set if mongo_collection is empty"""
        return []
    if kwargs is None:
        return None
    newResuilt = mongo_collection.insert_one(kwargs)
    return newResuilt.inserted_id
