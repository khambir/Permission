//
// PermissionType.swift
//
// Copyright (c) 2015-2016 Damien (http://delba.io)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//

public enum PermissionType {
    #if PERMISSION_CONTACTS
    @available(iOS 9.0, *) case contacts
    #endif
    
    #if PERMISSION_ADDRESS_BOOK
    case addressBook // Deprecated in iOS 9.0
    #endif
    
    #if PERMISSION_LOCATION
    case locationAlways
    case locationWhenInUse
    #endif
    
    #if PERMISSION_NOTIFICATIONS
    case notifications(UIUserNotificationSettings)
    #endif
    
    #if PERMISSION_MICROPHONE
    case microphone
    #endif
    
    #if PERMISSION_CAMERA
    case camera
    #endif
    
    #if PERMISSION_PHOTOS
    case photos
    #endif
    
    #if PERMISSION_REMINDERS
    case reminders
    #endif
    
    #if PERMISSION_EVENTS
    case events
    #endif
    
    #if PERMISSION_BLUETOOTH
    case bluetooth
    #endif
    
    #if PERMISSION_MOTION
    case motion
    #endif
    
    #if PERMISSION_SPEECH_RECOGNIZER
    @available(iOS 10.0, *) case speechRecognizer
    #endif
    
    #if PERMISSION_MEDIA_LIBRARY
    @available(iOS 9.3, *) case mediaLibrary
    #endif
    
    #if PERMISSION_SIRI
    @available(iOS 10.0, *) case siri
    #endif
    
    case unknown
}

extension PermissionType: CustomStringConvertible {
    public var description: String {
        #if PERMISSION_CONTACTS
        if case .contacts = self { return "Контактам" }
        #endif
        
        #if PERMISSION_ADDRESS_BOOK
        if case .addressBook = self { return "Телефонной книге" }
        #endif
        
        #if PERMISSION_LOCATION
        if case .locationAlways    = self { return "Геолокации" }
        if case .locationWhenInUse = self { return "Геолокации" }
        #endif
        
        #if PERMISSION_NOTIFICATIONS
        if case .notifications = self { return "Уведомлениям" }
        #endif
        
        #if PERMISSION_MICROPHONE
        if case .microphone = self { return "Микрофону" }
        #endif
        
        #if PERMISSION_CAMERA
        if case .camera = self { return "Камере" }
        #endif
        
        #if PERMISSION_PHOTOS
        if case .photos = self { return "Фото" }
        #endif
        
        #if PERMISSION_REMINDERS
        if case .reminders = self { return "Напоминаниям" }
        #endif
        
        #if PERMISSION_EVENTS
        if case .events = self { return "Календарю" }
        #endif
        
        #if PERMISSION_BLUETOOTH
        if case .bluetooth = self { return "Bluetooth" }
        #endif
        
        #if PERMISSION_MOTION
        if case .motion = self { return "Данным движения" }
        #endif
        
        #if PERMISSION_SPEECH_RECOGNIZER
        if case .speechRecognizer = self { return "Распознаванию речи" }
        #endif
        
        #if PERMISSION_SIRI
        if case .siri = self { return "Siri" }
        #endif
        
        #if PERMISSION_MEDIA_LIBRARY
        if case .mediaLibrary = self { return "Библиотеке изображений" }
        #endif
        
        fatalError()
    }
}
