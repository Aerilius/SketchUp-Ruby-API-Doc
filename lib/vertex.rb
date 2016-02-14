module Sketchup

  class Vertex < Entity

    # Finds a common edge defined by this vertex and another vertex.
    # @param [Sketchup::Vertex] vertex  another vertex
    # @return [Sketchup::Edge, nil] The edge that is common to both vertices. Nil if the vertices are not connected.
    def common_edge(vertex)
    end

    # Determines if this vertex is on the interior of a curve.
    # A vertex is on the interior of a curve if it is not at the curve's ends,
    # so it has two edges that ar epart of the same curve.
    # @return [Boolean] True if this vertex is on the interior of a curve, false if not.
    def curve_interior?
    end

    # Retrieves all edges that use this vertex.
    # @return [Array<Sketchup::Edge>] Edges starting or ending in this vertex.
    def edges
    end

    # Retrieves all faces that use this vertex.
    # @return [Array<Sketchup::Face>]
    def faces
    end

    # Retrieves the loops that use the current vertex.
    # If this vertex is used by a face, it is either used by the face's outer loop or possibly by an inner loop.
    # @return [Array<Sketchup::Loop>]
    def loops
    end

    # Retrieves the current position of this vertex.
    # @return [Geom::Point3d]
    # @note The point's coordinates are relative to the active path's transformation.
    def position
    end

    # Determines if this vertex is used by a given edge or face.
    # @overload used_by?(edge)
    #   @param [Sketchup::Edge]
    # @overload used_by?(face)
    #   @param [Sketchup::Face]
    # @return [Boolean] True if this vertex is used by the given entity. False otherwise.
    def used_by?(face_or_edge)
    end

  end

end
