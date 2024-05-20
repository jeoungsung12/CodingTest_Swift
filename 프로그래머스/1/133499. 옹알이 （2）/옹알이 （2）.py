def solution(babbling):
    valid_sounds = ["aya", "ye", "woo", "ma"]
    
    def is_valid_word(word):
        prev = ""
        i = 0
        while i < len(word):
            found = False
            for sound in valid_sounds:
                if word[i:i+len(sound)] == sound and sound != prev:
                    prev = sound
                    i += len(sound)
                    found = True
                    break
            if not found:
                return False
        return True
    
    count = 0
    for word in babbling:
        if is_valid_word(word):
            count += 1
            
    return count