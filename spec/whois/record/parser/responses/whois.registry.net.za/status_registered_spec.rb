# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.registry.net.za/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.registry.net.za.rb'

describe Whois::Record::Parser::WhoisRegistryNetZa, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.registry.net.za/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      expect(subject.disclaimer).to eq("The use of this Whois facility is subject to the following terms and\nconditions. https://registry.net.za/whois_terms\nCopyright (c) UniForum SA 1995-2012\n")
    end
  end
  describe "#domain" do
    it do
      expect(subject.domain).to eq("broccoliwafflesareawesome.co.za")
    end
  end
  describe "#domain_id" do
    it do
      lambda { subject.domain_id }.should raise_error Whois::AttributeNotSupported
    end
  end
  describe "#status" do
    it do
      expect(subject.status).to eq(['ok', 'autorenew'])
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
      expect(subject.created_on).to eq(Time.parse("2012-03-27"))
    end
  end
  describe "#updated_on" do
    it do
      lambda { subject.updated_on }.should raise_error Whois::AttributeNotSupported
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to eq(Time.parse("2013-03-27"))
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to be_a(Whois::Record::Registrar)
      expect(subject.registrar.id).to eq("epag")
      expect(subject.registrar.name).to eq("EPAG Domainservices")
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts).to have(1).items
      expect(subject.registrant_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Record::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].name).to eq("Fred Flintstone")
      expect(subject.registrant_contacts[0].email).to eq("someguy@somedomain.co.za")
      expect(subject.registrant_contacts[0].phone).to eq("+27.219000000")
      expect(subject.registrant_contacts[0].fax).to eq("+27.219001000")
      expect(subject.registrant_contacts[0].address).to eq("30 Frazzita Business Park Durbanville\nCape Town\nZA\n7550")
    end
  end
  describe "#admin_contacts" do
    it do
      lambda { subject.admin_contacts }.should raise_error Whois::AttributeNotSupported
    end
  end
  describe "#technical_contacts" do
    it do
      lambda { subject.technical_contacts }.should raise_error Whois::AttributeNotSupported
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers).to have(3).items
      expect(subject.nameservers[0]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns2.host-h.net")
      expect(subject.nameservers[1]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns1.dns-h.com")
      expect(subject.nameservers[2]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[2].name).to eq("ns1.host-h.net")
    end
  end
end
