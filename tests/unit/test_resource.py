import uuid

from lexmex.domain.model import Resource


class TestResource:
    def test_constructor_creates_resource():
        id_ = uuid.uuid4()
        resource = Resource(
            id_,
            resource_id="lex",
            name="Lex",
            config={}
        )

        assert resource.id == id_
        assert resource.resource_id == "lex"
        assert resource.name == "Lex"
        assert resource.config == {}
