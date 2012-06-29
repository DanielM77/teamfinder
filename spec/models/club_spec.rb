require 'spec_helper'

describe Club do
  before {
    @club = Club.new(
      city:'Bad Camberg',
      email:'info@rsvwuerges.de',
      fax:'(06434) 2074237',
      homepage:'http://www.rsvwuerges.de',
      image_path:'images/club1.jpg',
      mobile:'(0172) 6240581',
      name:'RSV Wuerges',
      phone:'(06434) 2047236',
      street:'Am Sportplatz',
      street_no:5,
      zip:65520
    )
  }
  subject { @club }
  it { should respond_to(:city) }
  it { should respond_to(:email) }
  it { should respond_to(:fax) }
  it { should respond_to(:homepage) }
  it { should respond_to(:image_path) }
  it { should respond_to(:mobile) }
  it { should respond_to(:name) }
  it { should respond_to(:phone) }
  it { should respond_to(:street) }
  it { should respond_to(:street_no) }
  it { should respond_to(:zip) }
  it { should be_valid}

  describe "when name is not present" do
    before { @club.name = " "}
    it { should_not be_valid }
  end

  describe "when name is too short" do
    before { @club.name = "a" * 4}
    it { should_not be_valid }
  end

  describe "when name is too long" do
    before { @club.name = "a" * 51}
    it { should_not be_valid}
  end
  describe "when name is already taken" do
    before do
      club_with_same_name = @club.dup
      club_with_same_name.save
    end
    it { should_not be_valid}
  end

  describe "when email is not present" do
    before { @club.email = " "}
    it { should_not be_valid}
  end

  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @club.email = invalid_address
        @club.should_not be_valid
      end
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @club.email = valid_address
        @club.should be_valid
      end
    end
  end

  describe "when email is already taken" do
    before do
      club_with_same_email = @club.dup
      club_with_same_email.save
    end
    it { should_not be_valid}
  end

  describe "when phone is not present" do
    before { @club.phone = " "}
    it { should_not be_valid}
  end

  describe "when street is not present" do
    before { @club.street = " "}
    it { should_not be_valid}
  end

  describe "when street_no is not present" do
    before { @club.street_no = " "}
    it { should_not be_valid}
  end

  describe "when zip is not present" do
    before { @club.zip = " "}
    it { should_not be_valid}
  end

  describe "when city is not present" do
    before { @club.city = " "}
    it { should_not be_valid}
  end

end
