require_relative '../lib/bot.rb'

describe Bot do
    let(:bot) { Bot.new }
    describe '#searcher' do
        it 'Should return an array' do
            expect(bot.searcher('petro').class).to eql(Array) 
        end

        it 'If we evaluate the result of calling #searcher to be a hash should return false' do
            expect(bot.searcher('petro').is_a?(Hash)).to eql(false) 
        end

        it 'If we evaluate the result of calling #searcher is not an integer should return true' do
            expect(bot.searcher('petro').is_a?(Integer)).not_to eql(true) 
        end
    end

    describe '#check_bots' do
        it 'Should return true when the parameters are equal to zero' do
            expect(bot.check_bots(0, 0)).to eql(true) 
        end

        it 'Should return true when one of the  parameters is equal to zero' do
            expect(bot.check_bots(0, 5)).to eql(true) 
        end

        it 'Should return true when one of the  parameters is equal to zero' do
            expect(bot.check_bots(5, 0)).to eql(true) 
        end

        it 'Should return false when the parameters are diferent from zero' do
            expect(bot.check_bots(5, 5)).to eql(false) 
        end
    end
end