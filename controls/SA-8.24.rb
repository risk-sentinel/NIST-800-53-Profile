control 'SA-8 (24)' do
  impact 0.5
  title 'Secure Failure and Recovery'
  desc <<~DESC
    Implement the security design principle of secure failure and recovery in #{input('sa_8_24_prm_1')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-08(24)[01] #{input('sa_08_24_odp_01')} implement the security design principle of secure failure;
      SA-08(24)[02] #{input('sa_08_24_odp_02')} implement the security design principle of secure recovery.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and communications protection policy; contingency planning policy; procedures addressing information system recovery and reconstitution; procedures addressing the security design principle of secure failure and recovery used in the specification, design, development, implementation, and modification of the system; contingency plan; procedures addressing system backup; contingency plan test documentation; contingency plan test results; system design documentation; security and privacy requirements and specifications for the system; system security and privacy architecture; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility for determining system security and privacy requirements; organizational personnel with system specification, design, development, implementation, and modification responsibilities; organizational personnel with contingency plan testing responsibilities; organizational personnel with system recovery and reconstitution responsibilities; system developers; organizational personnel with information security responsibilities; organizational personnel with information system backup responsibilities
      TEST: Organizational processes for applying the security design principle of secure failure and recovery in system specification, design, development, implementation, and modification; mechanisms supporting the application of the security design principle of secure failure and recovery in system specification, design, development, implementation, and modification; mechanisms supporting and/or implementing secure failure; organizational processes for contingency plan testing; mechanisms supporting contingency plan testing; mechanisms supporting recovery and reconstitution of the system; organizational processes for conducting system backups; mechanisms supporting and/or implementing system backups
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The principle of secure failure and recovery states that neither a failure in a system function or mechanism nor any recovery action in response to failure leads to a violation of security policy. The principle of secure failure and recovery parallels the principle of continuous protection to ensure that a system is capable of detecting (within limits) actual and impending failure at any stage of its operation (i.e., initialization, normal operation, shutdown, and maintenance) and to take appropriate steps to ensure that security policies are not violated. In addition, when specified, the system is capable of recovering from impending or actual failure to resume normal, degraded, or alternative secure operations while ensuring that a secure state is maintained such that security policies are not violated.

    Failure is a condition in which the behavior of a component deviates from its specified or expected behavior for an explicitly documented input. Once a failed security function is detected, the system may reconfigure itself to circumvent the failed component while maintaining security and provide all or part of the functionality of the original system, or it may completely shut itself down to prevent any further violation of security policies. For this to occur, the reconfiguration functions of the system are designed to ensure continuous enforcement of security policy during the various phases of reconfiguration.

    Another technique that can be used to recover from failures is to perform a rollback to a secure state (which may be the initial state) and then either shutdown or replace the service or component that failed such that secure operations may resume. Failure of a component may or may not be detectable to the components using it. The principle of secure failure indicates that components fail in a state that denies rather than grants access. For example, a nominally "atomic" operation interrupted before completion does not violate security policy and is designed to handle interruption events by employing higher-level atomicity and rollback mechanisms (e.g., transactions). If a service is being used, its atomicity properties are well-documented and characterized so that the component availing itself of that service can detect and handle interruption events appropriately. For example, a system is designed to gracefully respond to disconnection and support resynchronization and data consistency after disconnection.

    Failure protection strategies that employ replication of policy enforcement mechanisms, sometimes called defense in depth, can allow the system to continue in a secure state even when one mechanism has failed to protect the system. If the mechanisms are similar, however, the additional protection may be illusory, as the adversary can simply attack in series. Similarly, in a networked system, breaking the security on one system or service may enable an attacker to do the same on other similar replicated systems and services. By employing multiple protection mechanisms whose features are significantly different, the possibility of attack replication or repetition can be reduced. Analyses are conducted to weigh the costs and benefits of such redundancy techniques against increased resource usage and adverse effects on the overall system performance. Additional analyses are conducted as the complexity of these mechanisms increases, as could be the case for dynamic behaviors. Increased complexity generally reduces trustworthiness. When a resource cannot be continuously protected, it is critical to detect and repair any security breaches before the resource is once again used in a secure context.
  GUIDANCE
  tag nist: ['SA-8 (24)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag odp: %w{sa_08_24_odp_01 sa_08_24_odp_02 sa_8_24_prm_1}

  describe 'NIST SP 800-53 Rev 5 control SA-8 (24)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
