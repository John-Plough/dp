# def _if(bool, ifTrue, ifFalse)
#   bool ? ifTrue : ifFalse
# end

# def if(val, cb1, cb2)
#   val ? cb1 : cb2
# end


  
  # loop over str
    # if consonant, add char.ord - 96 to sub
    # else 
      # if sub > high
        # high = sub
      # sub = 0
  # return high



# def solve(s)
#   vowels = ['a', 'e', 'i', 'o', 'u']
#   high = 0
#   sub = 0

#   i = 0
#   while i < s.length
#     char = s[i]
#     if !vowels.include?(char) # if not a vowel
#       sub += (char.ord - 96) # add char val to sub
#     else
#       if sub > high
#         high = sub
#       end
#       sub = 0
#     end
#     i += 1
#   end
#   high
# end


# def solve(s)
#   vowels = ['a', 'e', 'i', 'o', 'u']
#   high = 0
#   sub = 0

#   s.each_char do |char|
#     if !vowels.include?(char) # if NOT a vowel
#       sub += (char.ord - 96) # add char val to sub
#     else # if vowel
#       if sub > high
#         high = sub
#       end
#       sub = 0 # reset sub to 0 for next substring
#     end
#   end
#   if sub > high
#     high = sub
#   end
#   high
# end


# p solve('zodiac')


# def solve(s)
#   s.split(/[aeiou]/).map{|x| x.sum - x.size * 96}.max
# end



# def solve(s)
#   s.split(/[aeiou]/).map{ |substring| substring.sum - (substring.size * 96) }.max
# end

# def solve(str)
#   # create array of consonant substrings
#   subs_arr = str.split(/[aeiou]/) 

#   # create array of substring values
#   vals = subs_arr.map { |substring| substring.sum - (substring.size * 96) }

#   # return highest value
#   vals.max
# end

s = "Fred:Corwill;Wilfred:Corwill;Barney:Tornbull;Betty:Tornbull;Bjon:Tornbull;Raphael:Corwill;Alfred:Corwill";

def meeting(s)
  names = s.downcase.split(';').map { |name| name.split(':') }

  sorted = names.sort do |a, b|
    last = a[1] <=> b[1]
    last == 0 ? a[0] <=> b[0] : last
  end

  sorted.map { |name| "(#{name[1].upcase}, #{name[0].upcase})" }.join
end

# more readable version, with intermediate variables
# def meeting(s)
#   names = s.downcase.split(';').map { |name| name.split(':') }

#   sorted = names.sort_by { |name| [name[1], name[0]] }

#   formatted_names = sorted.map { |name| "(#{name[1].upcase}, #{name[0].upcase})" }

#   formatted_names.join
# end


def meeting(s)
  s.upcase.split(';')
    .map { |name| name.split(':') } # names
    .sort_by { |name| [name[1], name[0]] } # sorted
    .map { |name| "(#{name[1]}, #{name[0]})" } # formatted
    .join # joined & returned
end

# more readable version, with intermediate variables
# def meeting(s)
#   names = s.downcase.split(';').map { |name| name.split(':') }

#   sorted = names.sort_by { |name| [name[1], name[0]] }

#   formatted_names = sorted.map { |name| "(#{name[1].upcase}, #{name[0].upcase})" }

#   formatted_names.join
# end


p meeting(s)