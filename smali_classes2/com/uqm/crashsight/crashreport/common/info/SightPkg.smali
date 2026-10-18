.class public final Lcom/uqm/crashsight/crashreport/common/info/SightPkg;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoLiteList;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoLiteListOrBuilder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLiteOrBuilder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUploadPackage;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUploadPackageOrBuilder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUploadOrBuilder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachmentOrBuilder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSessionOrBuilder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurityOrBuilder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategyOrBuilder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTimeOrBuilder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfoOrBuilder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoList;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoListOrBuilder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageOrBuilder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacketOrBuilder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkgOrBuilder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkgOrBuilder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryDataOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_SightPkg_AppInfo_ValueMapEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_AppInfo_ValueMapEntry_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_AppInfo_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_AppInfo_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_AppSession_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_AppSession_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_AttachUpTime_ValueMapEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_AttachUpTime_ValueMapEntry_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_AttachUpTime_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_AttachUpTime_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_Attachment_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_Attachment_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_ExceptionUploadPackage_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_ExceptionUploadPackage_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_ExceptionUpload_AllStacksEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_ExceptionUpload_AllStacksEntry_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_ExceptionUpload_UserMapEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_ExceptionUpload_UserMapEntry_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_ExceptionUpload_ValueMapEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_ExceptionUpload_ValueMapEntry_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_ExceptionUpload_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_ExceptionUpload_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_MemoryData_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_MemoryData_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_RequestPkg_HeadersEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_RequestPkg_HeadersEntry_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_RequestPkg_ReservedEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_RequestPkg_ReservedEntry_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_RequestPkg_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_RequestPkg_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_ResponsePkg_ValueMapEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_ResponsePkg_ValueMapEntry_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_ResponsePkg_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_ResponsePkg_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_RqdSecurity_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_RqdSecurity_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_RqdStrategy_ValueMapEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_RqdStrategy_ValueMapEntry_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_RqdStrategy_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_RqdStrategy_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_SummaryInfo_ValueMapEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_SummaryInfo_ValueMapEntry_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_SummaryInfo_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_SummaryInfo_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_UniPacket_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_UniPacket_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_UserInfoList_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_UserInfoList_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_UserInfoLiteList_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_UserInfoLiteList_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_UserInfoPackageLite_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_UserInfoPackageLite_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_UserInfoPackage_ValueMapEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_UserInfoPackage_ValueMapEntry_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_SightPkg_UserInfoPackage_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private static final internal_static_SightPkg_UserInfoPackage_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 50

    .line 31046
    const-string v0, "\n\u000eSightPkg.proto\u0012\u0008SightPkg\"0\n\nMemoryData\u0012\u0014\n\u000cbeginAddress\u0018\u0001 \u0001(\u0004\u0012\u000c\n\u0004data\u0018\u0002 \u0001(\u000c\"\u00e9\u0001\n\u000bResponsePkg\u0012\u000e\n\u0006result\u0018\u0001 \u0001(\u0003\u0012\u000b\n\u0003cmd\u0018\u0002 \u0001(\u0005\u0012\u000f\n\u0007sBuffer\u0018\u0003 \u0001(\u000c\u0012\u0011\n\tgatewayIp\u0018\u0004 \u0001(\t\u0012\u0012\n\nserverTime\u0018\u0005 \u0001(\u0003\u0012\u000e\n\u0006status\u0018\u0006 \u0001(\t\u0012\r\n\u0005qimei\u0018\u0007 \u0001(\t\u00125\n\u0008valueMap\u0018\u0008 \u0003(\u000b2#.SightPkg.ResponsePkg.ValueMapEntry\u001a/\n\rValueMapEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\"\u00c1\u0007\n\nRequestPkg\u0012\u0012\n\nplatformId\u0018\u0001 \u0001(\u0005\u0012\u000e\n\u0006prodId\u0018\u0002 \u0001(\t\u0012\u0010\n\u0008bundleId\u0018\u0003 \u0001(\t\u0012\u000f\n\u0007version\u0018\u0004 \u0001(\t\u0012\u000f\n\u0007channel\u0018\u0005 \u0001(\t\u0012\u000e\n\u0006sdkVer\u0018\u0006 \u0001(\t\u0012\u000b\n\u0003cmd\u0018\u0007 \u0001(\u0005\u0012\u000f\n\u0007sBuffer\u0018\u0008 \u0001(\u000c\u0012\r\n\u0005model\u0018\t \u0001(\t\u0012\r\n\u0005osVer\u0018\n \u0001(\t\u00124\n\u0008reserved\u0018\u000b \u0003(\u000b2\".SightPkg.RequestPkg.ReservedEntry\u0012\u0011\n\tsessionId\u0018\u000c \u0001(\t\u0012\u001e\n\u0016strategylastUpdateTime\u0018\r \u0001(\u0003\u0012\r\n\u0005sdkId\u0018\u000e \u0001(\t\u0012\u0010\n\u0008deviceId\u0018\u000f \u0001(\t\u0012\u000b\n\u0003apn\u0018\u0010 \u0001(\t\u0012\u0012\n\nuploadTime\u0018\u0011 \u0001(\u0003\u0012\u000c\n\u0004imei\u0018\u0012 \u0001(\t\u0012\r\n\u0005qimei\u0018\u0013 \u0001(\t\u0012\u000c\n\u0004imsi\u0018\u0014 \u0001(\t\u0012\u000b\n\u0003mac\u0018\u0015 \u0001(\t\u0012\u0011\n\tandroidId\u0018\u0016 \u0001(\t\u0012\u0013\n\u000bnetworkType\u0018\u0017 \u0001(\t\u0012\u000c\n\u0004idfv\u0018\u0018 \u0001(\t\u0012\u0017\n\u000fuserSetDeviceId\u0018\u0019 \u0001(\t\u0012\u0012\n\ncachedUuid\u0018\u001a \u0001(\t\u0012\u001a\n\u0012currentVersionUuid\u0018\u001b \u0001(\t\u00122\n\u0007headers\u0018\u001c \u0003(\u000b2!.SightPkg.RequestPkg.HeadersEntry\u0012\u0011\n\tphyMemAll\u0018\u001d \u0001(\u0005\u0012\u0012\n\nphyMemUsed\u0018\u001e \u0001(\u0005\u0012\u0013\n\u000busedProcMem\u0018\u001f \u0001(\u0005\u0012\u0012\n\ndisplayMem\u0018  \u0001(\t\u0012\u0013\n\u000bdisplayCard\u0018! \u0001(\t\u0012\u0012\n\nresolution\u0018\" \u0001(\t\u0012\u0016\n\u000edisplayVersion\u0018# \u0001(\t\u0012\u000b\n\u0003gpu\u0018$ \u0001(\t\u0012\r\n\u0005osBit\u0018% \u0001(\u0005\u0012\u000b\n\u0003cpu\u0018& \u0001(\t\u0012\u0011\n\tserverEnv\u0018\' \u0001(\t\u0012\u001c\n\u0014timeZoneAbbreviation\u0018( \u0001(\t\u0012\u0014\n\u000ctimeZoneName\u0018) \u0001(\t\u0012\u0017\n\u000ftimeZoneSeconds\u0018* \u0001(\u0005\u001a/\n\rReservedEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\u001a.\n\u000cHeadersEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\"\u00be\u0001\n\tUniPacket\u0012\u0010\n\u0008iVersion\u0018\u0001 \u0001(\u0005\u0012\u0012\n\nencodeName\u0018\u0002 \u0001(\t\u0012\u0012\n\niRequestId\u0018\u0003 \u0001(\u0005\u0012\u0014\n\u000csServantName\u0018\u0004 \u0001(\t\u0012\u0011\n\tsFuncName\u0018\u0005 \u0001(\t\u0012%\n\u0007request\u0018\u0006 \u0001(\u000b2\u0014.SightPkg.RequestPkg\u0012\'\n\u0008response\u0018\u0007 \u0001(\u000b2\u0015.SightPkg.ResponsePkg\"\u00a9\u0002\n\u000fUserInfoPackage\u0012\u000c\n\u0004type\u0018\u0001 \u0001(\u0005\u0012\u0011\n\tproceName\u0018\u0002 \u0001(\t\u0012\u0010\n\u0008deviceId\u0018\u0003 \u0001(\t\u0012#\n\u0004list\u0018\u0004 \u0003(\u000b2\u0015.SightPkg.SummaryInfo\u00129\n\u0008valueMap\u0018\u0005 \u0003(\u000b2\'.SightPkg.UserInfoPackage.ValueMapEntry\u0012*\n\nupTimeList\u0018\u0006 \u0003(\u000b2\u0016.SightPkg.AttachUpTime\u0012\u000e\n\u0006userId\u0018\u0007 \u0001(\t\u0012\u0016\n\u000edeviceBootTime\u0018\u0008 \u0001(\u0003\u001a/\n\rValueMapEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\"7\n\u000cUserInfoList\u0012\'\n\u0004list\u0018\u0001 \u0003(\u000b2\u0019.SightPkg.UserInfoPackage\"\u00f7\u0001\n\u000bSummaryInfo\u0012\u0011\n\tstartTime\u0018\u0001 \u0001(\u0003\u0012\u0011\n\tstartType\u0018\u0002 \u0001(\u0005\u0012\u000e\n\u0006userId\u0018\u0003 \u0001(\t\u0012\u0011\n\tproceName\u0018\u0004 \u0001(\t\u0012\u0011\n\tsessionId\u0018\u0005 \u0001(\t\u00125\n\u0008valueMap\u0018\u0006 \u0003(\u000b2#.SightPkg.SummaryInfo.ValueMapEntry\u0012\u0011\n\tgatewayIp\u0018\u0007 \u0001(\t\u0012\u0011\n\tcoldStart\u0018\u0008 \u0001(\u0008\u001a/\n\rValueMapEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\"\u00d4\u0002\n\u000cAttachUpTime\u0012\u000c\n\u0004type\u0018\u0001 \u0001(\u0005\u0012\u000f\n\u0007retCode\u0018\u0002 \u0001(\u0005\u0012\u000e\n\u0006retMsg\u0018\u0003 \u0001(\t\u0012\u0012\n\nattachSize\u0018\u0004 \u0001(\u0003\u0012\u0015\n\rzipAttachSize\u0018\u0005 \u0001(\u0003\u0012\u0013\n\u000bnetworkType\u0018\u0006 \u0001(\t\u0012\u0011\n\ttotalTime\u0018\u0007 \u0001(\u0003\u0012\u0010\n\u0008copyTime\u0018\u0008 \u0001(\u0003\u0012\u000f\n\u0007zipTime\u0018\t \u0001(\u0003\u0012\u0012\n\nuploadTime\u0018\n \u0001(\u0003\u0012\u0012\n\ndeleteTime\u0018\u000b \u0001(\u0003\u0012\u000e\n\u0006expUid\u0018\u000c \u0001(\t\u00126\n\u0008valueMap\u0018\r \u0003(\u000b2$.SightPkg.AttachUpTime.ValueMapEntry\u001a/\n\rValueMapEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\"\u00f4\u0002\n\u000bRqdStrategy\u0012\u000e\n\u0006enable\u0018\u0001 \u0001(\u0008\u0012\u0016\n\u000eenableUserInfo\u0018\u0002 \u0001(\u0008\u0012\u0013\n\u000benableQuery\u0018\u0003 \u0001(\u0008\u0012\u000b\n\u0003url\u0018\u0004 \u0001(\t\u0012\u000e\n\u0006expUrl\u0018\u0005 \u0001(\t\u0012\'\n\u0008security\u0018\u0006 \u0001(\u000b2\u0015.SightPkg.RqdSecurity\u00125\n\u0008valueMap\u0018\u0007 \u0003(\u000b2#.SightPkg.RqdStrategy.ValueMapEntry\u0012\u001e\n\u0016strategylastUpdateTime\u0018\u0008 \u0001(\u0003\u0012\u0010\n\u0008httpsUrl\u0018\t \u0001(\t\u0012\u0013\n\u000bhttpsExpUrl\u0018\n \u0001(\t\u0012\u0018\n\u0010eventRecordCount\u0018\u000b \u0001(\u0005\u0012\u0019\n\u0011eventTimeInterval\u0018\u000c \u0001(\u0005\u001a/\n\rValueMapEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\"0\n\u000bRqdSecurity\u0012\u000e\n\u0006encKey\u0018\u0001 \u0001(\t\u0012\u0011\n\tencPubKey\u0018\u0002 \u0001(\t\"/\n\nAppSession\u0012\u0011\n\tsessionId\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006events\u0018\u0002 \u0003(\t\"\u00b6\u0001\n\u0007AppInfo\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004arch\u0018\u0002 \u0001(\t\u0012\u000c\n\u0004UUID\u0018\u0003 \u0001(\t\u0012\u0010\n\u0008baseAddr\u0018\u0004 \u0001(\t\u0012\u000b\n\u0003ver\u0018\u0005 \u0001(\t\u00121\n\u0008valueMap\u0018\u0006 \u0003(\u000b2\u001f.SightPkg.AppInfo.ValueMapEntry\u001a/\n\rValueMapEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\":\n\nAttachment\u0012\u000c\n\u0004type\u0018\u0001 \u0001(\u0005\u0012\u0010\n\u0008fileName\u0018\u0002 \u0001(\t\u0012\u000c\n\u0004data\u0018\u0003 \u0001(\u000c\"\u00ad\u0007\n\u000fExceptionUpload\u0012\u000c\n\u0004type\u0018\u0001 \u0001(\t\u0012\u0011\n\tcrashTime\u0018\u0002 \u0001(\u0003\u0012\u000f\n\u0007expName\u0018\u0003 \u0001(\t\u0012\u0012\n\nexpMessage\u0018\u0004 \u0001(\t\u0012\u000f\n\u0007expAddr\u0018\u0005 \u0001(\t\u0012\u0013\n\u000bcrashThread\u0018\u0006 \u0001(\t\u0012\u0011\n\tcallStack\u0018\u0007 \u0001(\t\u0012;\n\tallStacks\u0018\u0008 \u0003(\u000b2(.SightPkg.ExceptionUpload.AllStacksEntry\u0012\u000e\n\u0006expuid\u0018\t \u0001(\t\u0012%\n\u0007session\u0018\n \u0001(\u000b2\u0014.SightPkg.AppSession\u0012\u0012\n\ncrashCount\u0018\u000b \u0001(\u0005\u0012\u000e\n\u0006userid\u0018\u000c \u0001(\t\u0012\u0010\n\u0008deviceId\u0018\r \u0001(\t\u0012\"\n\u0007appInfo\u0018\u000e \u0001(\u000b2\u0011.SightPkg.AppInfo\u0012#\n\u0008libInfos\u0018\u000f \u0003(\u000b2\u0011.SightPkg.AppInfo\u0012\"\n\u0007plugins\u0018\u0010 \u0003(\u000b2\u0011.SightPkg.AppInfo\u0012&\n\u0008attaches\u0018\u0011 \u0003(\u000b2\u0014.SightPkg.Attachment\u00129\n\u0008valueMap\u0018\u0012 \u0003(\u000b2\'.SightPkg.ExceptionUpload.ValueMapEntry\u00127\n\u0007userMap\u0018\u0013 \u0003(\u000b2&.SightPkg.ExceptionUpload.UserMapEntry\u0012\u0011\n\tgatewayIp\u0018\u0014 \u0001(\t\u0012\u0011\n\tcoldStart\u0018\u0015 \u0001(\u0008\u0012\u0019\n\u0011stackBeginAddress\u0018\u0016 \u0001(\u0004\u0012\u0011\n\tstackData\u0018\u0017 \u0001(\u000c\u0012\u0017\n\u000fserverSymbolize\u0018\u0018 \u0001(\u0008\u0012/\n\u0011textCodeFragments\u0018\u0019 \u0003(\u000b2\u0014.SightPkg.MemoryData\u0012\u000f\n\u0007pidName\u0018\u001a \u0001(\t\u0012\u0016\n\u000edeviceBootTime\u0018\u001b \u0001(\u0003\u0012\u000e\n\u0006ehType\u0018\u001c \u0001(\u0005\u001a0\n\u000eAllStacksEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\u001a/\n\rValueMapEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\u001a.\n\u000cUserMapEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\"A\n\u0016ExceptionUploadPackage\u0012\'\n\u0004list\u0018\u0001 \u0003(\u000b2\u0019.SightPkg.ExceptionUpload\"\u00bf\u0002\n\u0013UserInfoPackageLite\u0012\u000c\n\u0004type\u0018\u0001 \u0001(\u0005\u0012\u0011\n\tstartTime\u0018\u0002 \u0001(\u0003\u0012\r\n\u0005appId\u0018\u0003 \u0001(\t\u0012\u0011\n\tsessionId\u0018\u0004 \u0001(\t\u0012\u0010\n\u0008deviceId\u0018\u0005 \u0001(\t\u0012\u000e\n\u0006userId\u0018\u0006 \u0001(\t\u0012\u000f\n\u0007sceneId\u0018\u0007 \u0001(\t\u0012\u0012\n\nappVersion\u0018\u0008 \u0001(\t\u0012\u000f\n\u0007cpuType\u0018\t \u0001(\t\u0012\u0011\n\tosVersion\u0018\n \u0001(\t\u0012\u000b\n\u0003rom\u0018\u000b \u0001(\t\u0012\r\n\u0005model\u0018\u000c \u0001(\t\u0012\u0012\n\nplatformId\u0018\r \u0001(\u0005\u0012\u0012\n\nlaunchTime\u0018\u000e \u0001(\u0003\u0012\u0011\n\tserverEnv\u0018\u000f \u0001(\t\u0012\u000f\n\u0007cpuName\u0018\u0010 \u0001(\t\u0012\u0012\n\nsdkVersion\u0018\u0011 \u0001(\t\"?\n\u0010UserInfoLiteList\u0012+\n\u0004list\u0018\u0001 \u0003(\u000b2\u001d.SightPkg.UserInfoPackageLiteB6\n*com.uqm.crashsight.crashreport.common.infoB\u0008SightPkgb\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 31163
    new-array v2, v1, [Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    .line 31164
    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a([Ljava/lang/String;[Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    .line 31168
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_MemoryData_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31169
    new-instance v2, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v3, "BeginAddress"

    const-string v4, "Data"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_MemoryData_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31174
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->g()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_ResponsePkg_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31175
    new-instance v3, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v11, "Qimei"

    const-string v12, "ValueMap"

    const-string v5, "Result"

    const-string v6, "Cmd"

    const-string v7, "SBuffer"

    const-string v8, "GatewayIp"

    const-string v9, "ServerTime"

    const-string v10, "Status"

    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v0, v5}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_ResponsePkg_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31180
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_ResponsePkg_ValueMapEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31181
    new-instance v3, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v5, "Key"

    const-string v6, "Value"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v0, v7}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_ResponsePkg_ValueMapEntry_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31186
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->g()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_RequestPkg_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31187
    new-instance v7, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v48, "TimeZoneName"

    const-string v49, "TimeZoneSeconds"

    const-string v8, "PlatformId"

    const-string v9, "ProdId"

    const-string v10, "BundleId"

    const-string v11, "Version"

    const-string v12, "Channel"

    const-string v13, "SdkVer"

    const-string v14, "Cmd"

    const-string v15, "SBuffer"

    const-string v16, "Model"

    const-string v17, "OsVer"

    const-string v18, "Reserved"

    const-string v19, "SessionId"

    const-string v20, "StrategylastUpdateTime"

    const-string v21, "SdkId"

    const-string v22, "DeviceId"

    const-string v23, "Apn"

    const-string v24, "UploadTime"

    const-string v25, "Imei"

    const-string v26, "Qimei"

    const-string v27, "Imsi"

    const-string v28, "Mac"

    const-string v29, "AndroidId"

    const-string v30, "NetworkType"

    const-string v31, "Idfv"

    const-string v32, "UserSetDeviceId"

    const-string v33, "CachedUuid"

    const-string v34, "CurrentVersionUuid"

    const-string v35, "Headers"

    const-string v36, "PhyMemAll"

    const-string v37, "PhyMemUsed"

    const-string v38, "UsedProcMem"

    const-string v39, "DisplayMem"

    const-string v40, "DisplayCard"

    const-string v41, "Resolution"

    const-string v42, "DisplayVersion"

    const-string v43, "Gpu"

    const-string v44, "OsBit"

    const-string v45, "Cpu"

    const-string v46, "ServerEnv"

    const-string v47, "TimeZoneAbbreviation"

    filled-new-array/range {v8 .. v49}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v7, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_RequestPkg_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31192
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->h()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v7, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_RequestPkg_ReservedEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31193
    new-instance v8, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v8, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_RequestPkg_ReservedEntry_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31198
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_RequestPkg_HeadersEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31199
    new-instance v7, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v7, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_RequestPkg_HeadersEntry_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31204
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->g()Ljava/util/List;

    move-result-object v0

    const/4 v7, 0x3

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_UniPacket_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31205
    new-instance v7, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v13, "Request"

    const-string v14, "Response"

    const-string v8, "IVersion"

    const-string v9, "EncodeName"

    const-string v10, "IRequestId"

    const-string v11, "SServantName"

    const-string v12, "SFuncName"

    filled-new-array/range {v8 .. v14}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v7, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_UniPacket_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31210
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->g()Ljava/util/List;

    move-result-object v0

    const/4 v7, 0x4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_UserInfoPackage_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31211
    new-instance v7, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v14, "UserId"

    const-string v15, "DeviceBootTime"

    const-string v8, "Type"

    const-string v9, "ProceName"

    const-string v10, "DeviceId"

    const-string v11, "List"

    const-string v12, "ValueMap"

    const-string v13, "UpTimeList"

    filled-new-array/range {v8 .. v15}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v7, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_UserInfoPackage_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31216
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_UserInfoPackage_ValueMapEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31217
    new-instance v7, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v7, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_UserInfoPackage_ValueMapEntry_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31222
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->g()Ljava/util/List;

    move-result-object v0

    const/4 v7, 0x5

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_UserInfoList_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31223
    new-instance v7, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v8, "List"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v0, v9}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v7, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_UserInfoList_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31228
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->g()Ljava/util/List;

    move-result-object v0

    const/4 v7, 0x6

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_SummaryInfo_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31229
    new-instance v7, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v15, "GatewayIp"

    const-string v16, "ColdStart"

    const-string v9, "StartTime"

    const-string v10, "StartType"

    const-string v11, "UserId"

    const-string v12, "ProceName"

    const-string v13, "SessionId"

    const-string v14, "ValueMap"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v0, v9}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v7, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_SummaryInfo_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31234
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_SummaryInfo_ValueMapEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31235
    new-instance v7, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v0, v9}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v7, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_SummaryInfo_ValueMapEntry_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31240
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->g()Ljava/util/List;

    move-result-object v0

    const/4 v7, 0x7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_AttachUpTime_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31241
    new-instance v7, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v20, "ExpUid"

    const-string v21, "ValueMap"

    const-string v9, "Type"

    const-string v10, "RetCode"

    const-string v11, "RetMsg"

    const-string v12, "AttachSize"

    const-string v13, "ZipAttachSize"

    const-string v14, "NetworkType"

    const-string v15, "TotalTime"

    const-string v16, "CopyTime"

    const-string v17, "ZipTime"

    const-string v18, "UploadTime"

    const-string v19, "DeleteTime"

    filled-new-array/range {v9 .. v21}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v0, v9}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v7, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_AttachUpTime_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31246
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_AttachUpTime_ValueMapEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31247
    new-instance v7, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v0, v9}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v7, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_AttachUpTime_ValueMapEntry_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31252
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->g()Ljava/util/List;

    move-result-object v0

    const/16 v7, 0x8

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_RqdStrategy_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31253
    new-instance v7, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v19, "EventRecordCount"

    const-string v20, "EventTimeInterval"

    const-string v9, "Enable"

    const-string v10, "EnableUserInfo"

    const-string v11, "EnableQuery"

    const-string v12, "Url"

    const-string v13, "ExpUrl"

    const-string v14, "Security"

    const-string v15, "ValueMap"

    const-string v16, "StrategylastUpdateTime"

    const-string v17, "HttpsUrl"

    const-string v18, "HttpsExpUrl"

    filled-new-array/range {v9 .. v20}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v0, v9}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v7, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_RqdStrategy_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31258
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_RqdStrategy_ValueMapEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31259
    new-instance v7, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v0, v9}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v7, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_RqdStrategy_ValueMapEntry_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31264
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->g()Ljava/util/List;

    move-result-object v0

    const/16 v7, 0x9

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_RqdSecurity_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31265
    new-instance v7, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v9, "EncKey"

    const-string v10, "EncPubKey"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v0, v9}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v7, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_RqdSecurity_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31270
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->g()Ljava/util/List;

    move-result-object v0

    const/16 v7, 0xa

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_AppSession_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31271
    new-instance v7, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v9, "SessionId"

    const-string v10, "Events"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v0, v9}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v7, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_AppSession_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31276
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->g()Ljava/util/List;

    move-result-object v0

    const/16 v7, 0xb

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_AppInfo_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31277
    new-instance v7, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v13, "Ver"

    const-string v14, "ValueMap"

    const-string v9, "Name"

    const-string v10, "Arch"

    const-string v11, "UUID"

    const-string v12, "BaseAddr"

    filled-new-array/range {v9 .. v14}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v0, v9}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v7, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_AppInfo_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31282
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_AppInfo_ValueMapEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31283
    new-instance v7, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v0, v9}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v7, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_AppInfo_ValueMapEntry_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31288
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->g()Ljava/util/List;

    move-result-object v0

    const/16 v7, 0xc

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_Attachment_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31289
    new-instance v7, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v9, "Type"

    const-string v10, "FileName"

    filled-new-array {v9, v10, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v0, v4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v7, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_Attachment_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31294
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->g()Ljava/util/List;

    move-result-object v0

    const/16 v4, 0xd

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_ExceptionUpload_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31295
    new-instance v4, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v35, "DeviceBootTime"

    const-string v36, "EhType"

    const-string v9, "Type"

    const-string v10, "CrashTime"

    const-string v11, "ExpName"

    const-string v12, "ExpMessage"

    const-string v13, "ExpAddr"

    const-string v14, "CrashThread"

    const-string v15, "CallStack"

    const-string v16, "AllStacks"

    const-string v17, "Expuid"

    const-string v18, "Session"

    const-string v19, "CrashCount"

    const-string v20, "Userid"

    const-string v21, "DeviceId"

    const-string v22, "AppInfo"

    const-string v23, "LibInfos"

    const-string v24, "Plugins"

    const-string v25, "Attaches"

    const-string v26, "ValueMap"

    const-string v27, "UserMap"

    const-string v28, "GatewayIp"

    const-string v29, "ColdStart"

    const-string v30, "StackBeginAddress"

    const-string v31, "StackData"

    const-string v32, "ServerSymbolize"

    const-string v33, "TextCodeFragments"

    const-string v34, "PidName"

    filled-new-array/range {v9 .. v36}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v0, v7}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v4, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_ExceptionUpload_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31300
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->h()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_ExceptionUpload_AllStacksEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31301
    new-instance v4, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v1, v7}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v4, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_ExceptionUpload_AllStacksEntry_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31306
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_ExceptionUpload_ValueMapEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31307
    new-instance v2, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_ExceptionUpload_ValueMapEntry_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31312
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_ExceptionUpload_UserMapEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31313
    new-instance v1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_ExceptionUpload_UserMapEntry_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31318
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->g()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_ExceptionUploadPackage_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31319
    new-instance v1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_ExceptionUploadPackage_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31324
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->g()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_UserInfoPackageLite_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31325
    new-instance v1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v24, "CpuName"

    const-string v25, "SdkVersion"

    const-string v9, "Type"

    const-string v10, "StartTime"

    const-string v11, "AppId"

    const-string v12, "SessionId"

    const-string v13, "DeviceId"

    const-string v14, "UserId"

    const-string v15, "SceneId"

    const-string v16, "AppVersion"

    const-string v17, "CpuType"

    const-string v18, "OsVersion"

    const-string v19, "Rom"

    const-string v20, "Model"

    const-string v21, "PlatformId"

    const-string v22, "LaunchTime"

    const-string v23, "ServerEnv"

    filled-new-array/range {v9 .. v25}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_UserInfoPackageLite_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 31330
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->g()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_UserInfoLiteList_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 31331
    new-instance v1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_UserInfoLiteList_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_MemoryData_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_MemoryData_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_ResponsePkg_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$11800()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_UniPacket_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$11900()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_UniPacket_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_ResponsePkg_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_ResponsePkg_ValueMapEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$13700()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_UserInfoPackage_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$13800()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_UserInfoPackage_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$13900()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_UserInfoPackage_ValueMapEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$16100()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_UserInfoList_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$16200()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_UserInfoList_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$17200()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_SummaryInfo_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$17300()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_SummaryInfo_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$17400()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_SummaryInfo_ValueMapEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$19500()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_AttachUpTime_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$19600()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_AttachUpTime_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$19700()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_AttachUpTime_ValueMapEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$22200()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_RqdStrategy_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$22300()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_RqdStrategy_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$22400()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_RqdStrategy_ValueMapEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$24900()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_RqdSecurity_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$25000()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_RqdSecurity_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$26200()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_AppSession_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$26300()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_AppSession_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$27500()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_AppInfo_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$27600()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_AppInfo_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$27700()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_AppInfo_ValueMapEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$29700()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_Attachment_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$29800()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_Attachment_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$31000()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_ExceptionUpload_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$31100()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_ExceptionUpload_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$31200()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_ExceptionUpload_AllStacksEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$31300()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_ExceptionUpload_ValueMapEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$31400()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_ExceptionUpload_UserMapEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3300()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_RequestPkg_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3400()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_RequestPkg_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3500()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_RequestPkg_ReservedEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3600()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_RequestPkg_HeadersEntry_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$36800()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_ExceptionUploadPackage_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$36900()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_ExceptionUploadPackage_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$37900()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_UserInfoPackageLite_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$38000()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_UserInfoPackageLite_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$41800()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_UserInfoLiteList_descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$41900()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->internal_static_SightPkg_UserInfoLiteList_fieldAccessorTable:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 31041
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->descriptor:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/uqm/crashsight/protobuf/ExtensionRegistry;)V
    .locals 0

    .line 14
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->registerAllExtensions(Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 0

    return-void
.end method
