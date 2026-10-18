.class Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService$SingletonHolder;
.super Ljava/lang/Object;
.source "GmeVideoNativeJniService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;-><init>(Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService$1;)V

    sput-object v0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService$SingletonHolder;->sInstance:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;
    .locals 1

    .line 22
    sget-object v0, Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService$SingletonHolder;->sInstance:Lcom/gme/video/sdk/edit/jni/GmeVideoNativeJniService;

    return-object v0
.end method
