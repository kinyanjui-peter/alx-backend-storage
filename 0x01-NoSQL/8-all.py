#!/usr/bin/env python3
"""
Python function that lists all documents in a collection:

args:
    mongo_collection : collection
return:
    empty list if no document in the collection
"""
import pymongo


def list_all(mongo_collection):
    """ list all documents in the collection """
    if (mongo_collection is None):
        return []
    docslist = mongo_collection.find({})
    return [doc for doc in docslist]
