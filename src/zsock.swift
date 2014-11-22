public enum ZSockType {
    case Pair(String)
    case Pub(String)
    case Sub(String, String)
    case Req(String)
    case Rep(String)
    case Dealer(String)
    case Router(String)
    case Pull(String)
    case Push(String)
    case Xpub(String)
    case Xsub(String, String)
    case Stream(String)
}
private enum ZmqSocketType : Int {
    case Pair   = 0
    case Pub    = 1
    case Sub    = 2
    case Req    = 3
    case Rep    = 4
    case Dealer = 5
    case Router = 6
    case Pull   = 7
    case Push   = 8
    case Xpub   = 9
    case Xsub   = 10
    case Stream = 11
    func newFrom(#sockType: ZSockType) -> ZmqSocketType {
        switch(sockType) {
            case .Pair: return .Pair;
            case .Pub: return .Pub;
            case .Sub: return .Sub;
            case .Req: return .Req;
            case .Rep: return .Req;
            case .Dealer: return .Dealer;
            case .Router: return .Router;
            case .Pull: return .Pull;
            case .Push: return .Push;
            case .Xpub: return .Xpub;
            case .Xsub: return .Xsub;
            case .Stream: return .Stream;
        }
    }
}
typealias zsock_ptr = UnsafePointer<zsock_t>
typealias zsock_ptr_ptr = UnsafePointer<zsock_t>

private class ZmqSocketInternal {
    func zsock_new(type: ZmqSocketType, file: String, line: Int)
        -> UnsafePointer<zsock_t> {
        return zsock_new_(type.rawData, file, line)
    }
    func zsock_destroy(socket: zsock_ptr_ptr) {
    
    }
}

public class ZmqSocket {
    private class func create(type: ZmqSocketType, file: String = __FILE__, line: Int = __LINE__) -> ZmqSocket {
//        ZmqSocketFactory.create(type, file, line)
    }
}

public class ZmqBaseSocket {
    // private let zsock: UnsafePointer<zsock_t>
    // private init(socket: UnsafePointer<zsock_t>) {
    //     zsock = socket
    // }
    // deinit {
    //     zsock_destroy(zsock)
    // }
}

// private static class ZmqSocketFactory {
//     private static func create(type: ZmqSocketType) -> ZmqBaseSocket {
//         switch(type) {
//           case .Pub(let e): return ZmqBaseSocket(zsock_new_pub()) 
//           case .Sub(let e):  return ZmqBaseSocket(zsock_new_pub())
//           case .Req(let e):  return ZmqBaseSocket(zsock_new_pub())
//           case .Rep(let e):  return ZmqBaseSocket(zsock_new_pub())
//           case .Dealer(let e):  return ZmqBaseSocket(zsock_new_pub())
//           case .Router(let e):  return ZmqBaseSocket(zsock_new_pub())
//           case .Pull(let e):  return ZmqBaseSocket(zsock_new_pub())
//           case .Push(let e):  return ZmqBaseSocket(zsock_new_pub())
//           case .XPub(let e):  return ZmqBaseSocket(zsock_new_pub())
//           case .XSub(let e):  return ZmqBaseSocket(zsock_new_pub())
//           case .Pair(let e):  return ZmqBaseSocket(zsock_new_pub())
//           case .Stream(let e):  return ZmqBaseSocket(zsock_new_pub())
//         }
//     }
// }

public class ZmqPubSocket {}
public class ZmqSubSocket {}
public class ZmqReqSocket {}
public class ZmqRepSocket {}
public class ZmqDealerSocket {}
public class ZmqRouterSocket {}
public class ZmqPullSocket {}
public class ZmqPushSocket {}
public class ZmqXPubSocket {}
public class ZmqXSubSocket {}
public class ZmqPairSocket {}
public class ZmqStreamSocket {}
