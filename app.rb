get '/' do
  max_fret = 16
  riff_length = 5 + (14 * rand).to_i

  numbers = riff_length.times.map { (max_fret * rand).to_i + 1 }
  strings = %w[E A D G B E]

  line = "--" + numbers.map { |num| "#{num}--" }.join

  tab = strings.map { |string| "#{string}|#{line}" }.join("\n")

  <<-EOF
  <h1>King Tears Bat Trip Riff Generator</h1>
  <pre>#{tab}</pre>
  <p>
    Refresh for more riffs.<br />
    &mdash; <a href="https://twitter.com/dbalatero">@dbalatero</a>
  </p>
  EOF
end
