"""add data_responsibility_title attribute for system

Revision ID: fdd28c39a679
Revises: 7a94527643a1
Create Date: 2022-03-21 17:37:23.855761

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = "fdd28c39a679"
down_revision = "7a94527643a1"
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column("systems", sa.Column("data_responsibility_title", sa.String()))
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_column("systems", "data_responsibility_title")
    # ### end Alembic commands ###
