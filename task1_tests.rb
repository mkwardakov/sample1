#!/usr/bin/env ruby
require 'test/unit'
require_relative 'task1.rb'

class MymethodTest < Test::Unit::TestCase
    def test_functional
        in1 = ["Kia", "Volkswagen", "Subaru", "Hyundai", "Skoda", "Subaru Forester", "Mercedes", "Chevrolet", "Lada XRay", "VAZ 2106", "Jeep", "Toyota Corolla", "Toyota RAV4", "Kia Cee'd", "Hyundai i30", "Kia Sportage", "Mitsubishi", "Renault Sandero", "Peugeot", "Great Wall", "Suzuki GSR600", "Yamaha MidnightStar XVS950A", "Yamaha YBR125", "Subaru Impreza", "Lexus LS300", "Porsche Macan", "Volkswagen Passat", "Audi", "GM", "Vauxhall", "Opel", "Opel Astra", "Subaru WRX"]
        in2 = ["asd", "aasd", "Subaru Impreza", "Subaru Forester", "Subaru Exiga"]
        out1 = ["Subaru Forester - this guy knows what to do very well", "Subaru - this guy knows what to do", "Subaru WRX - this guy knows what to do", "Subaru Impreza - this guy knows what to do", "GM", "Kia", "Jeep", "Audi", "Opel", "Skoda", "Hyundai", "Peugeot", "Mercedes", "VAZ 2106", "Vauxhall", "Chevrolet", "Lada XRay", "Kia Cee'd", "Volkswagen", "Mitsubishi", "Great Wall", "Opel Astra", "Toyota RAV4", "Hyundai i30", "Lexus LS300", "Kia Sportage", "Suzuki GSR600", "Yamaha YBR125", "Porsche Macan", "Toyota Corolla", "Renault Sandero", "Volkswagen Passat", "Yamaha MidnightStar XVS950A"]
        out2 = ["Subaru Forester - this guy knows what to do very well", "Subaru Exiga - this guy knows what to do", "Subaru Impreza - this guy knows what to do", "asd", "aasd"]
        assert_equal(mymethod(["Opel"]), ["Opel"])
        assert_equal(mymethod(in1), out1)
        assert_equal(mymethod(in2), out2)
    end
    def test_boundary
        assert(mymethod([]).empty?)
        assert(mymethod(["", "", "-z"]))
    end
end
