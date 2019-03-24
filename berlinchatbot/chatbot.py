from flask import request


def chatbot_ping():
    return 'I am pingable right now'


def chatbot_response():
    query = request.args.get('query')
    if query is None or query == '':
        return 'Berlin chatbot: hey whats up ...'

    return 'I am not well trained enough to answer your query {}'.format(query)


# Implement machine learning based smart both to replace dump hardcoded response.
class SmartChatBot:
    pass
