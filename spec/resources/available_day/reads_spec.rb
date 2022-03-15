require "rails_helper"

RSpec.describe AvailableDayResource, type: :resource do
  describe "serialization" do
    let!(:available_day) { create(:available_day) }

    it "works" do
      render
      data = jsonapi_data[0]
      expect(data.id).to eq(available_day.id)
      expect(data.jsonapi_type).to eq("available_days")
    end
  end

  describe "filtering" do
    let!(:available_day1) { create(:available_day) }
    let!(:available_day2) { create(:available_day) }

    context "by id" do
      before do
        params[:filter] = { id: { eq: available_day2.id } }
      end

      it "works" do
        render
        expect(d.map(&:id)).to eq([available_day2.id])
      end
    end
  end

  describe "sorting" do
    describe "by id" do
      let!(:available_day1) { create(:available_day) }
      let!(:available_day2) { create(:available_day) }

      context "when ascending" do
        before do
          params[:sort] = "id"
        end

        it "works" do
          render
          expect(d.map(&:id)).to eq([
                                      available_day1.id,
                                      available_day2.id,
                                    ])
        end
      end

      context "when descending" do
        before do
          params[:sort] = "-id"
        end

        it "works" do
          render
          expect(d.map(&:id)).to eq([
                                      available_day2.id,
                                      available_day1.id,
                                    ])
        end
      end
    end
  end

  describe "sideloading" do
    # ... your tests ...
  end
end
