require 'test_helper'

class IdentitiesTest < Test::Unit::TestCase
  def test_authenticating_successfully_with_one_identity_adapter
    Hector::Identity.adapter = mock(authenticate: true)
    assert authenticate('sam', 'password')
  end

  def test_authenticating_unsuccessfully_with_one_identity_adapter
    Hector::Identity.adapter = mock(authenticate: false)
    refute authenticate('sam', 'password')
  end

  def test_authenticating_successfully_with_multiple_identity_adapters
    Hector::Identity.adapter = [mock(authenticate: false), mock(authenticate: true)]
    assert authenticate('sam', 'password')
  end

  def test_authenticating_unsuccessfully_with_multiple_identity_adapters
    Hector::Identity.adapter = [mock(authenticate: false), mock(authenticate: false)]
    refute authenticate('sam', 'password')
  end

  def test_identity_equality
    adapter = mock.tap do |adapter|
      adapter.expects(:normalize).twice.with('sam').returns('sam')
    end

    first_identity = Hector::Identity.new('sam', adapter)
    second_identity = Hector::Identity.new('sam', adapter)

    assert_equal first_identity, second_identity
  end

  private

  def authenticate(username, password)
    Hector::Identity.authenticate(username, password) { |authenticated| authenticated }
  end
end
