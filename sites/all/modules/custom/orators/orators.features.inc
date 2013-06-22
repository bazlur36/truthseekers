<?php
/**
 * @file
 * orators.features.inc
 */

/**
 * Implements hook_views_api().
 */
function orators_views_api() {
  return array("api" => "3.0");
}

/**
 * Implements hook_flag_default_flags().
 */
function orators_flag_default_flags() {
  $flags = array();
  // Exported flag: "Like".
  $flags['popular'] = array(
    'content_type' => 'node',
    'title' => 'Like',
    'global' => 0,
    'types' => array(
      0 => 'orators',
      1 => 'programs',
    ),
    'flag_short' => 'Like ',
    'flag_long' => '',
    'flag_message' => '',
    'unflag_short' => 'Unlike',
    'unflag_long' => '',
    'unflag_message' => '',
    'unflag_denied_text' => '',
    'link_type' => 'toggle',
    'roles' => array(
      'flag' => array(
        0 => 2,
        1 => 4,
      ),
      'unflag' => array(
        0 => 2,
        1 => 4,
      ),
    ),
    'weight' => 0,
    'show_on_form' => 0,
    'access_author' => '',
    'show_on_page' => 1,
    'show_on_teaser' => 1,
    'show_contextual_link' => 0,
    'i18n' => 0,
    'module' => 'orators',
    'locked' => array(
      0 => 'name',
    ),
    'api_version' => 2,
  );
  return $flags;

}
