// widgets/project_card.dart
//
// A reusable card widget that displays one project in the Projects grid.
// It receives a Project object and renders:
//   • A coloured image placeholder rectangle
//   • The project title
//   • A short description
//   • Technology chip badges

import 'package:flutter/material.dart';
import '../models/portfolio_data.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    // Card adds a white background with a subtle shadow (elevation).
    return Card(
      elevation: 2,
      // ClipRRect clips the card's children to its rounded corners.
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Column(
          // crossAxisAlignment.start aligns all children to the left edge.
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── Image Placeholder ────────────────────────────────────────
            // In a real app this would be an Image.network() or Image.asset().
            // For now it's a coloured box with the project name as a label.
            Container(
              height: 140,
              width: double.infinity, // Fill the full card width
              color: Colors.blueGrey.shade100,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.image_outlined,
                        size: 40, color: Colors.blueGrey),
                    const SizedBox(height: 8),
                    Text(
                      project.imageLabel,
                      style: const TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ── Text content area ─────────────────────────────────────────
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Project title
                  Text(
                    project.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Project description
                  Text(
                    project.description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      height: 1.5, // Line height for readability
                    ),
                  ),

                  const SizedBox(height: 12),

                  // ── Technology chips ─────────────────────────────────────
                  // Wrap lays out children left-to-right, wrapping to the next
                  // line when there's no more horizontal space.
                  Wrap(
                    spacing: 6,  // Horizontal gap between chips
                    runSpacing: 6, // Vertical gap between chip rows
                    children: project.technologies.map((tech) {
                      // Chip is a Material Design label badge.
                      return Chip(
                        label: Text(
                          tech,
                          style: const TextStyle(fontSize: 12),
                        ),
                        backgroundColor: Colors.blueGrey.shade50,
                        padding: EdgeInsets.zero,
                        materialTapTargetSize:
                            MaterialTapTargetSize.shrinkWrap,
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
