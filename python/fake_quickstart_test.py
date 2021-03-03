import fake_quickstart

def test_translate_text(capsys):
    fake_quickstart.fake_service_sample();
    out, _ = capsys.readouterr()
    assert "Passing" in out

