result = []

ARGV.each do |arg|
    # Skip if not an integer
    next unless arg =~ /^-?\d+$/

    # Convert to integer
    i_arg = arg.to_i

    # Find the right position to insert
    inserted = false
    result.each_with_index do |val, index|
        if i_arg <= val
            result.insert(index, i_arg)
            inserted = true
            break
        end
    end

    # If not inserted, it means the number is greater than all existing values
    result << i_arg unless inserted
end

puts result
