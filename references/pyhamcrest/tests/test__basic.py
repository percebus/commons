from hamcrest import assert_that, is_


def test__True__is__True() -> None:
    assert_that(True, is_(True))
