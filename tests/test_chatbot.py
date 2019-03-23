from src.chatbot import chatbot_ping


def test_chatbot_ping():
    assert chatbot_ping() == 'I am pingable right now'
