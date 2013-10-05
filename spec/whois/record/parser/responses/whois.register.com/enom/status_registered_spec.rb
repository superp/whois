# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.register.com/enom/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.register.com.rb'

describe Whois::Record::Parser::WhoisRegisterCom, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.register.com/enom/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#status" do
    it do
      lambda { subject.status }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#available?" do
    it do
      expect(subject.available?).to eq(false)
    end
  end
  describe "#registered?" do
    it do
      expect(subject.registered?).to eq(true)
    end
  end
  describe "#created_on" do
    it do
      expect(subject.created_on).to be_a(Time)
      expect(subject.created_on).to eq(Time.parse("2002-03-14 00:19:48"))
    end
  end
  describe "#updated_on" do
    it do
      lambda { subject.updated_on }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to be_a(Time)
      expect(subject.expires_on).to eq(Time.parse("2014-03-13 23:19:00"))
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to be_a(Whois::Record::Registrar)
      expect(subject.registrar.id).to eq(nil)
      expect(subject.registrar.name).to eq("Register.com")
      expect(subject.registrar.url).to eq("http://www.register.com/")
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts).to have(1).items
      expect(subject.registrant_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Record::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].name).to eq("Josh Cramer")
      expect(subject.registrant_contacts[0].organization).to eq("Cramer Development")
      expect(subject.registrant_contacts[0].address).to eq("226 S. Clinton Street")
      expect(subject.registrant_contacts[0].city).to eq("Iowa City")
      expect(subject.registrant_contacts[0].zip).to eq("52240")
      expect(subject.registrant_contacts[0].state).to eq("IA")
      expect(subject.registrant_contacts[0].country).to eq(nil)
      expect(subject.registrant_contacts[0].country_code).to eq("US")
      expect(subject.registrant_contacts[0].phone).to eq(nil)
      expect(subject.registrant_contacts[0].fax).to eq("")
      expect(subject.registrant_contacts[0].email).to eq(nil)
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts).to have(1).items
      expect(subject.admin_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.admin_contacts[0].type).to eq(Whois::Record::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[0].name).to eq("Host Master")
      expect(subject.admin_contacts[0].organization).to eq("Cramer Development Incorporated")
      expect(subject.admin_contacts[0].address).to eq("226 S Clinton St")
      expect(subject.admin_contacts[0].city).to eq("Iowa City")
      expect(subject.admin_contacts[0].zip).to eq("52245")
      expect(subject.admin_contacts[0].state).to eq("IA")
      expect(subject.admin_contacts[0].country).to eq(nil)
      expect(subject.admin_contacts[0].country_code).to eq("US")
      expect(subject.admin_contacts[0].phone).to eq("+1.5152920050")
      expect(subject.admin_contacts[0].fax).to eq("")
      expect(subject.admin_contacts[0].email).to eq("domains@cramerdev.com")
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts).to have(1).items
      expect(subject.technical_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.technical_contacts[0].type).to eq(Whois::Record::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[0].name).to eq("Host Master")
      expect(subject.technical_contacts[0].organization).to eq("Cramer Development Incorporated")
      expect(subject.technical_contacts[0].address).to eq("226 S Clinton St")
      expect(subject.technical_contacts[0].city).to eq("Iowa City")
      expect(subject.technical_contacts[0].zip).to eq("52245")
      expect(subject.technical_contacts[0].state).to eq("IA")
      expect(subject.technical_contacts[0].country).to eq(nil)
      expect(subject.technical_contacts[0].country_code).to eq("US")
      expect(subject.technical_contacts[0].phone).to eq("+1.5152920050")
      expect(subject.technical_contacts[0].fax).to eq("")
      expect(subject.technical_contacts[0].email).to eq("domains@cramerdev.com")
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers).to have(5).items
      expect(subject.nameservers[0]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[0].name).to eq("dns01.gpn.register.com")
      expect(subject.nameservers[1]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[1].name).to eq("dns02.gpn.register.com")
      expect(subject.nameservers[2]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[2].name).to eq("dns03.gpn.register.com")
      expect(subject.nameservers[3]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[3].name).to eq("dns04.gpn.register.com")
      expect(subject.nameservers[4]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[4].name).to eq("dns05.gpn.register.com")
    end
  end
end
