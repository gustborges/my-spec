require "./my_spec"

def emphasize(text)
  "#{text.upcase}!"
end

MySpec.describe "emphasizing text" do
  it "makes the text uppercase and adds an exclamation mark" do
    # expect(output).to(expected_output)
    expect(emphasize("hello")).to eq("HELLO!")
  end
end
