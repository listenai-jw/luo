# frozen_string_literal: true

module Luo
  class AgentRunnerContext
    attr_accessor :user_input, :action_input, :response, :agent_results, :final_result, :messages, :retries

    def initialize
      @agent_results = []
      @retries = 0
    end

    def histories
      @histories ||= MemoryHistory.new
    end

    def histories=(histories)
      @histories = histories
    end

    def client
      @client
    end

    def client=(client)
      @client = client
    end

    def have_running_agents
      @running_agents ||= Set.new
    end

  end
end