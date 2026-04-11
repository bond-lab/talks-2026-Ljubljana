import shutil
from pathlib import Path

from flask_frozen import Freezer

from web import create_app

app = create_app()
app.config.from_pyfile('settings.py')

freezer = Freezer(app)

if __name__ == '__main__':
    slides_dir = Path(__file__).parent / 'slides'
    pdf_dir = Path(__file__).parent / 'web' / 'static' / 'pdf'
    pdf_dir.mkdir(parents=True, exist_ok=True)
    for pdf in slides_dir.glob('*.pdf'):
        shutil.copy2(pdf, pdf_dir / pdf.name)

    freezer.freeze()
