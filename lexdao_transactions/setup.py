from setuptools import setup

with open("README.md", encoding="utf-8") as readme_file:
        readme = readme_file.read()

setup(
    name="lexdao_transactions",
    description="Implementation of Alex V. series on 'How to Connect to Postgres with Python cit. https://www.youtube.com/watch?v=ZVWNnj--4NU",
    author = "Cimply",
    author_email = "cimplyanonymous@hotmail.com",
    long_description=readme,
    test_suite="lexdao_transactions/test"
)