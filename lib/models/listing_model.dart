import 'package:cloud_firestore/cloud_firestore.dart';

class ListingModel {
  final String listingId;
  final String landlordId;
  final String title;
  final String description;
  final String location;
  final double latitude;
  final double longitude;
  final String city;
  final String university;
  final String roomType;
  final int totalCapacity;
  final int currentOccupants;
  final int availableSlots;
  final double pricePerSlot;
  final String genderPreference;
  final List<String> amenities;
  final String houseRules;
  final List<String> photos;
  final bool isVerified;
  final bool membershipActive;
  final DateTime createdAt;

  ListingModel({
    required this.listingId,
    required this.landlordId,
    required this.title,
    required this.description,
    required this.location,
    required this.latitude,
    required this.longitude,
    required this.city,
    required this.university,
    required this.roomType,
    required this.totalCapacity,
    required this.currentOccupants,
    required this.availableSlots,
    required this.pricePerSlot,
    this.genderPreference = 'any',
    this.amenities = const [],
    this.houseRules = '',
    this.photos = const [],
    this.isVerified = false,
    this.membershipActive = false,
    required this.createdAt,
  });

  factory ListingModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return ListingModel(
      listingId: data['listingId'] ?? '',
      landlordId: data['landlordId'] ?? '',
      title: data['title'] ?? '',
      description: data['description'] ?? '',
      location: data['location'] ?? '',
      latitude: (data['latitude'] ?? 0.0).toDouble(),
      longitude: (data['longitude'] ?? 0.0).toDouble(),
      city: data['city'] ?? '',
      university: data['university'] ?? '',
      roomType: data['roomType'] ?? 'single',
      totalCapacity: data['totalCapacity'] ?? 1,
      currentOccupants: data['currentOccupants'] ?? 0,
      availableSlots: data['availableSlots'] ?? 1,
      pricePerSlot: (data['pricePerSlot'] ?? 0.0).toDouble(),
      genderPreference: data['genderPreference'] ?? 'any',
      amenities: List<String>.from(data['amenities'] ?? []),
      houseRules: data['houseRules'] ?? '',
      photos: List<String>.from(data['photos'] ?? []),
      isVerified: data['isVerified'] ?? false,
      membershipActive: data['membershipActive'] ?? false,
      createdAt: (data['createdAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'listingId': listingId,
      'landlordId': landlordId,
      'title': title,
      'description': description,
      'location': location,
      'latitude': latitude,
      'longitude': longitude,
      'city': city,
      'university': university,
      'roomType': roomType,
      'totalCapacity': totalCapacity,
      'currentOccupants': currentOccupants,
      'availableSlots': availableSlots,
      'pricePerSlot': pricePerSlot,
      'genderPreference': genderPreference,
      'amenities': amenities,
      'houseRules': houseRules,
      'photos': photos,
      'isVerified': isVerified,
      'membershipActive': membershipActive,
      'createdAt': Timestamp.fromDate(createdAt),
    };
  }

  bool get isAvailable => availableSlots > 0 && membershipActive && isVerified;
}