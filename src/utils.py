import uuid


def health_check():
    return {'id': uuid.uuid1(), 'message': 'Health is good'}

