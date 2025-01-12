/* istanbul ignore file */
/* tslint:disable */
/* eslint-disable */

/**
 * Model for the classifier params
 * These are all not required as part of the request
 * and can rely on the defaults
 */
export type ClassifyParams = {
  possible_targets?: Array<any>;
  top_n?: number;
  remove_stop_words?: boolean;
  pii_threshold?: number;
  num_samples?: number;
};
