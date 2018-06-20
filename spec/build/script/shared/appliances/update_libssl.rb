shared_examples_for 'update libssl1.0.0' do
  let(:update_libssl) { "apt-get install libssl1.0.0" }

  context "on Precise" do
    let(:sexp) { sexp_find(subject, [:if, "-n $(command -v lsb_release) && $(lsb_release -cs) = 'precise'"]) }

    it 'updates libssl1.0.0' do
      expect(sexp).to include_sexp [:cmd, update_libssl, sudo: true, echo: true]
    end
  end
end
