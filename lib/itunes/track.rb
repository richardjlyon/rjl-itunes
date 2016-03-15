#!/usr/bin/env ruby
#
# = Track
#
# Copyright 2016 Richard Lyon
# Distributed under the MIT license
#

class Track
  def initialize track_obj
    @track_obj = track_obj
  end

  def name
    return @track_obj.name.get
  end

  def name=(str)
    @track_obj.name.set(str)
  end

  def artist
    return @track_obj.artist.get
  end

  def artist=(str)
    @track_obj.artist.set(str)
  end

  def album
    return @track_obj.album.get
  end

  def album=(str)
    @track_obj.album.set(str)
  end

  def album_artist
    return @track_obj.album_artist.get
  end

  def album_artist=(str)
    @track_obj.album_artist.set(str)
  end

  def composer
    return @track_obj.composer.get
  end

  def composer=(str)
    @track_obj.composer.set(str)
  end

  def grouping
    return @track_obj.grouping.get
  end

  def grouping=(str)
    @track_obj.grouping.set(str)
  end

  def genre
    return @track_obj.genre.get
  end

  def genre=(str)
    @track_obj.genre.set(str)
  end

  def comment
    return @track_obj.comment.get
  end

  def comment=(str)
    @track_obj.comment.set(str)
  end

  def compilation?
    return @track_obj.compilation.get
  end

  def tags
    return self.grouping.gsub("][", ",")[1..-2].split(',')
  end
end
