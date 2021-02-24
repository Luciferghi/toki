<?php

/**
 * This code was generated by
 * \ / _    _  _|   _  _
 * | (_)\/(_)(_|\/| |(/_  v1.0.0
 * /       /
 */

namespace Twilio\Rest\Trunking\V1\Trunk;

use Twilio\Exceptions\TwilioException;
use Twilio\InstanceContext;
use Twilio\Options;
use Twilio\Values;
use Twilio\Version;

class RecordingContext extends InstanceContext {
    /**
     * Initialize the RecordingContext
     *
     * @param Version $version Version that contains the resource
     * @param string $trunkSid The SID of the Trunk from which to fetch the
     *                         recording settings.
     */
    public function __construct(Version $version, $trunkSid) {
        parent::__construct($version);

        // Path Solution
        $this->solution = ['trunkSid' => $trunkSid, ];

        $this->uri = '/Trunks/' . \rawurlencode($trunkSid) . '/Recording';
    }

    /**
     * Fetch the RecordingInstance
     *
     * @return RecordingInstance Fetched RecordingInstance
     * @throws TwilioException When an HTTP error occurs.
     */
    public function fetch(): RecordingInstance {
        $payload = $this->version->fetch('GET', $this->uri);

        return new RecordingInstance($this->version, $payload, $this->solution['trunkSid']);
    }

    /**
     * Update the RecordingInstance
     *
     * @param array|Options $options Optional Arguments
     * @return RecordingInstance Updated RecordingInstance
     * @throws TwilioException When an HTTP error occurs.
     */
    public function update(array $options = []): RecordingInstance {
        $options = new Values($options);

        $data = Values::of(['Mode' => $options['mode'], 'Trim' => $options['trim'], ]);

        $payload = $this->version->update('POST', $this->uri, [], $data);

        return new RecordingInstance($this->version, $payload, $this->solution['trunkSid']);
    }

    /**
     * Provide a friendly representation
     *
     * @return string Machine friendly representation
     */
    public function __toString(): string {
        $context = [];
        foreach ($this->solution as $key => $value) {
            $context[] = "$key=$value";
        }
        return '[Twilio.Trunking.V1.RecordingContext ' . \implode(' ', $context) . ']';
    }
}