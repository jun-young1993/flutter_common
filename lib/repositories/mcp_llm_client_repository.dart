import 'package:flutter_common/providers/model_provider/fixed_claude_provider.dart';
import 'package:mcp_llm/mcp_llm.dart';

class LlmClientSetupConfig {
  final String apiKey;
  LlmClientSetupConfig({required this.apiKey});
}

abstract class McpLlmClientRepository {
  Future<LlmClient> initialize(LlmClientSetupConfig config);
}

class McpLlmClientDefaultRepository extends McpLlmClientRepository {
  final McpLlm _mcpLlm = McpLlm();
  @override
  Future<LlmClient> initialize(LlmClientSetupConfig config) async {
    return _setupMcpLlmClient(config);
  }

  Future<LlmClient> _setupMcpLlmClient(LlmClientSetupConfig config) async {
    const providerName = 'claude';
    const model = 'claude-3-haiku-20240307';
    _mcpLlm.registerProvider(providerName, FixedClaudeProviderFactory());
    final llmClient = await _mcpLlm.createClient(
      providerName: providerName,
      config: LlmConfiguration(
        apiKey: config.apiKey,
        model: model,
        options: {
          'temperature': 0.7,
          'max_tokens': 1500,
        },
      ),
      systemPrompt: '''
            You are a helpful assistant with access to various tools and resources. Provide concise and accurate responses.
            You're an agent that can call external tools to help solve user questions. 
            ALWAYS follow this process: 
            1) Think about what tools could help answer this question, 
            2) Call appropriate tools to gather information, 
            3) If you need more information, call additional tools, 
            4) Once you have all needed information, respond directly to the user's question without mentioning your thought process. 
            5) Only call tools that are necessary and relevant to the user's question.
          ''',
    );
    return llmClient;
  }
}
