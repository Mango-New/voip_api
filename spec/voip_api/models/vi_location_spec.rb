require 'spec_helper'

module VoipApi
  describe VILocation do
    
    describe "concerning converting stuff from VOIP api casing to our standard camelcasing" do
      it "can give you a description of an attribute" do
        VILocation.description(:location_id).should eq("ID generated by 911 provider (DASH) associated with the location")
        VILocation.description(:address1).should eq("Street and house number")
        VILocation.description(:address2).should eq("Any additional address information such as 'Apt 1' or 'STE 100'")
        VILocation.description(:city).should eq("City or community Name")
        VILocation.description(:state).should eq("Two letter state abbreviation")
        VILocation.description(:zip_code).should eq("5-digit ZIP code")
        VILocation.description(:plus_four).should eq("4-digit ZIP code extension")
        VILocation.description(:caller_name).should eq("Caller Name")
        VILocation.description(:latitude).should eq("Latitudinal Coordinates")
        VILocation.description(:longitude).should eq("Longitudinal Coordinates")
        VILocation.description(:activated_time).should eq("Date in which the location was provisioned")
        VILocation.description(:update_time).should eq("Date in which the location was last updated")
        VILocation.description(:status_code).should eq("GEOCODED or PROVISIONED. Old locations may be VERIFIED or UNVERIFIED")
        VILocation.description(:status_description).should eq("Describes the status code")
      end

      it "should be able to create a new vi_location from their erratic variable names" do
        hashie_params = VoipApi::Mapping::VoipVILocation.new({
          location_id: 5,
          address1: "address1",
          address2: "address2",
          city: "city",
          state: "state",
          zipCode: "zipCode",
          plusFour: "plusFour",
          callerName: "callerName",
          latitude: "latitude",
          longitude: "longitude",
          activatedTime: "activatedTime",
          updateTime: "updateTime",
          statusCode: "statusCode",
          statusDescription: "statusDescription",
        })
        vi_location = VILocation.new(hashie_params)
        vi_location.location_id.should eq(5)
        vi_location.address1.should eq("address1")
        vi_location.address2.should eq("address2")
        vi_location.city.should eq("city")
        vi_location.state.should eq("state")
        vi_location.zip_code.should eq("zipCode")
        vi_location.plus_four.should eq("plusFour")
        vi_location.caller_name.should eq("callerName")
        vi_location.latitude.should eq("latitude")
        vi_location.longitude.should eq("longitude")
        vi_location.activated_time.should eq("activatedTime")
        vi_location.update_time.should eq("updateTime")
        vi_location.status_code.should eq("statusCode")
        vi_location.status_description.should eq("statusDescription")
      end
    end

  end
end
