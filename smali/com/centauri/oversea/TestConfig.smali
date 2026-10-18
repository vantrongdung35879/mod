.class public Lcom/centauri/oversea/TestConfig;
.super Ljava/lang/Object;
.source "TestConfig.java"


# static fields
.field public static mMpInfo:Ljava/lang/String; = ""

.field public static mWebViewUrl:Ljava/lang/String; = ""

.field public static retCodeInfo:I

.field public static retCodeOrder:I

.field public static retCodeProvide:I

.field public static retCodeReProvide:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurTestMpInfo()Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lcom/centauri/oversea/TestConfig;->mMpInfo:Ljava/lang/String;

    return-object v0
.end method
