

"""Testing the integrtation of our application setup and its interaction with our database"""
import os

import pytest
from sqlalchemy.exc import ProgrammingError

from lexdao_transactions import application_setup


def test_application_setup():
    """Checking the database connection is active with correction details"""
    table_name = "wallet_test"

    app, db = application_setup.application_setup()

    assert app.config["SQLALCHEMY_DATABASE_URI"] == str(db.sessions.bind.url)
    assert db.session.execute(f"SELECT * from {table_name}")
    

#def test_application_setup_with_incorrect_password():
#    """Check database connection throws ProgrammingError when using incorrect password"""
 #   table_name = "wallet_test"
 #   os.environ["PG_PASSWORD"] = "incorrect_password"

#    app, db = application_setup.application_setup()

#    assert app.config["SQLALCHEMY_DATABASE_URI"] == str(db.session.bind.url)

#    with pytest.raises(ProgrammingError):
 #       db.session.execute(f"Select * from {table_name}")