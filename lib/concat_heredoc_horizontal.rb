# frozen_string_literal: true

require_relative "concat_heredoc_horizontal/version"

module ConcatHeredocHorizontal
  class Error < StandardError; end
  # Your code goes here...
  def self.concat_simple(str_1, str_2)
    i = 0
    j = 0
    k = 0
    lim_sup = (str_1.count("\n") > str_2.count("\n"))? str_1.count("\n") : str_2.count("\n")
    str = ""
    str_result = str.dup

    while i <= lim_sup
      while j < str_1.length
        unless str_1[j].eql?("\n")
          str_result << str_1[j]
        else
          j += 1
          break
        end
        j += 1
      end

      while k < str_2.length
        unless str_2[k].eql?("\n")
          str_result << str_2[k]
        else
          k += 1
          break
        end
        k += 1
      end

      str_result << "\n"
      i += 1
    end

    return str_result.chomp
  end
end
