from enum import Enum

class BlockType(Enum):
    OPEN = 1
    RECEIVE = 2
    SEND = 3
    CHANGE = 4
    EPOCH = 5