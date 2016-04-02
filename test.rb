def test_here_documents_can_also_handle_multiple_lines
    long_string = <<EOS
It was the best of times,
It was the worst of times.
EOS
end
puts test_here_documents_can_also_handle_multiple_lines