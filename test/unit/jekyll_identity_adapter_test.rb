require 'test_helper'

class JekyllIdentityAdapterTest < Test::Unit::TestCase
  def setup
    @jekyll = Hector::JekyllIdentityAdapter.new
  end

  def test_authenticating_successfully
    @jekyll.adapters = [mock(authenticate: false), mock(authenticate: true)]
    assert authenticate('sam', 'password')
  end

  def test_authenticating_unsuccessfully
    @jekyll.adapters = [mock(authenticate: false), mock(authenticate: false)]
    refute authenticate('sam', 'password')
  end

  def test_username_normalization
    assert_equal 'sam', @jekyll.normalize('sam')
    assert_equal 'sam', @jekyll.normalize('sam ')
    assert_equal 'sam', @jekyll.normalize(' sam')
    assert_equal 'sam', @jekyll.normalize('Sam')
    assert_equal 'sam', @jekyll.normalize('SAM ')
  end

  private

  def authenticate(username, password)
    @jekyll.authenticate(username, password) { |authenticated| authenticated }
  end
end
