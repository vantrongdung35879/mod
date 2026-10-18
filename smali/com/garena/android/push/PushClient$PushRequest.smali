.class public final Lcom/garena/android/push/PushClient$PushRequest;
.super Ljava/lang/Object;
.source "PushClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/android/push/PushClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PushRequest"
.end annotation


# instance fields
.field public account:Ljava/lang/String;

.field public appId:Ljava/lang/Integer;

.field public appKey:Ljava/lang/String;

.field public deviceType:Ljava/lang/Integer;

.field public registrationId:Ljava/lang/String;

.field public tags:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/garena/android/push/PushClient$PushRequest;->registrationId:Ljava/lang/String;

    .line 46
    new-instance v1, Lcom/garena/android/push/PushClient$PushRequest;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/garena/android/push/PushClient$PushRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/garena/android/push/PushClient$PushRequest;->registrationId:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/garena/android/push/PushClient$PushRequest;->appKey:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/garena/android/push/PushClient$PushRequest;->appId:Ljava/lang/Integer;

    .line 53
    iput-object p4, p0, Lcom/garena/android/push/PushClient$PushRequest;->deviceType:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/garena/android/push/PushClient$PushRequest;->registrationId:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/garena/android/push/PushClient$PushRequest;->appKey:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/garena/android/push/PushClient$PushRequest;->appId:Ljava/lang/Integer;

    .line 59
    iput-object p4, p0, Lcom/garena/android/push/PushClient$PushRequest;->deviceType:Ljava/lang/Integer;

    .line 60
    iput-object p5, p0, Lcom/garena/android/push/PushClient$PushRequest;->tags:Ljava/lang/String;

    .line 61
    iput-object p6, p0, Lcom/garena/android/push/PushClient$PushRequest;->account:Ljava/lang/String;

    return-void
.end method
