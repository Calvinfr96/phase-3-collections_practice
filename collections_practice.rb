int_array = (1..10).to_a
word_array = ["abcde", "ab", "abc", "a", "abcd"]
kesha_array = ["kesha", "kesha", "kesha", "kesha", "kesha", "kesha", "kesha"]
start_with_a = ["apples", "alphabet", "acorn", "alpha", "banana", "boolean", "char"]

def sort_array_asc(int_array)
    int_array.sort do |a, b|
        a <=> b
    end
end
print sort_array_asc(int_array)
puts

def sort_array_desc(int_array)
    int_array.sort do |a, b|
        b <=> a
    end
end
print sort_array_desc(int_array)
puts

def sort_array_char_count(word_array)
    word_array.sort do |a, b|
        a.size <=> b.size
    end
end
print sort_array_char_count(word_array)
puts

def swap_elements(array)
    [array.slice(0)] + array.slice(1,2).reverse + array.slice(3, array.size - 3)
end
print swap_elements(int_array)
puts

def reverse_array(int_array)
    int_array.reverse
end
print reverse_array(int_array)
puts

def kesha_maker(string_array)
    modified_strings = []
    string_array.each do |string|
        string[2] = "$"
        modified_strings << string
    end
    modified_strings
end
print kesha_maker(kesha_array)
puts

def find_a(string_array)
    string_array.select do |string|
        string.start_with?("a")
    end
end
print find_a(start_with_a)
puts

def sum_array(int_array)
    int_array.inject do |sum, int|
        sum + int
    end
end
print sum_array(int_array)
puts

def add_s(string_array)
    string_array.each_with_index.collect do |element, index|
        if index == 1
            element
        else
            element + "s"
        end
    end
end
print add_s(kesha_array)
puts