require "rails_helper"

RSpec.describe AttendanceResource, type: :resource do
  describe "creating" do
    let(:payload) do
      {
        data: {
          type: "attendances",
          attributes: {},
        },
      }
    end

    let(:instance) do
      AttendanceResource.build(payload)
    end

    it "works" do
      expect do
        expect(instance.save).to eq(true),
                                 instance.errors.full_messages.to_sentence
      end.to change { Attendance.count }.by(1)
    end
  end

  describe "updating" do
    let!(:attendance) { create(:attendance) }

    let(:payload) do
      {
        data: {
          id: attendance.id.to_s,
          type: "attendances",
          attributes: {}, # Todo!
        },
      }
    end

    let(:instance) do
      AttendanceResource.find(payload)
    end

    xit "works (add some attributes and enable this spec)" do
      expect do
        expect(instance.update_attributes).to eq(true)
      end.to change { attendance.reload.updated_at }
      # .and change { attendance.foo }.to('bar') <- example
    end
  end

  describe "destroying" do
    let!(:attendance) { create(:attendance) }

    let(:instance) do
      AttendanceResource.find(id: attendance.id)
    end

    it "works" do
      expect do
        expect(instance.destroy).to eq(true)
      end.to change { Attendance.count }.by(-1)
    end
  end
end
