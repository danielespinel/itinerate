require 'rails_helper'

RSpec.describe AttendanceResource, type: :resource do
  describe 'serialization' do
    let!(:attendance) { create(:attendance) }

    it 'works' do
      render
      data = jsonapi_data[0]
      expect(data.id).to eq(attendance.id)
      expect(data.jsonapi_type).to eq('attendances')
    end
  end

  describe 'filtering' do
    let!(:attendance1) { create(:attendance) }
    let!(:attendance2) { create(:attendance) }

    context 'by id' do
      before do
        params[:filter] = { id: { eq: attendance2.id } }
      end

      it 'works' do
        render
        expect(d.map(&:id)).to eq([attendance2.id])
      end
    end
  end

  describe 'sorting' do
    describe 'by id' do
      let!(:attendance1) { create(:attendance) }
      let!(:attendance2) { create(:attendance) }

      context 'when ascending' do
        before do
          params[:sort] = 'id'
        end

        it 'works' do
          render
          expect(d.map(&:id)).to eq([
            attendance1.id,
            attendance2.id
          ])
        end
      end

      context 'when descending' do
        before do
          params[:sort] = '-id'
        end

        it 'works' do
          render
          expect(d.map(&:id)).to eq([
            attendance2.id,
            attendance1.id
          ])
        end
      end
    end
  end

  describe 'sideloading' do
    # ... your tests ...
  end
end
