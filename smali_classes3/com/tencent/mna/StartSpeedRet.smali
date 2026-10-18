.class public Lcom/tencent/mna/StartSpeedRet;
.super Ljava/lang/Object;
.source "StartSpeedRet.java"


# static fields
.field public static final SPEED_AB_B:I = 0xa

.field private static final SPEED_AB_B_DESC:Ljava/lang/String; = "AB\u6d4b\u8bd5\u9009\u62e9\u4e0d\u52a0\u901f"

.field public static final SPEED_AUTO_BREAK_TAKE_EFFECT:I = 0x3

.field private static final SPEED_AUTO_BREAK_TAKE_EFFECT_DESC:Ljava/lang/String; = "\u5bf9\u5c40\u4e2d\u52a0\u901f\u4e2d\u65ad"

.field public static final SPEED_CONTROLDNSFAILED:I = -0x8

.field private static final SPEED_CONTROLDNSFAILED_DESC:Ljava/lang/String; = "\u4e2d\u63a7\u57df\u540dDNS\u8bf7\u6c42\u5931\u8d25"

.field public static final SPEED_CONTROLFAILED:I = -0x3

.field private static final SPEED_CONTROLFAILED_DESC:Ljava/lang/String; = "\u8bf7\u6c42\u4e2d\u63a7\u5931\u8d25"

.field public static final SPEED_DNSFAILED:I = -0x6

.field private static final SPEED_DNSFAILED_DESC:Ljava/lang/String; = "GameServer DNS\u8bf7\u6c42\u5931\u8d25"

.field public static final SPEED_EXCEPTION:I = -0x192

.field private static final SPEED_EXCEPTION_DESC:Ljava/lang/String; = "\u52a0\u901f\u5f02\u5e38"

.field public static final SPEED_FORCE_DIRECT:I = -0x10

.field private static final SPEED_FORCE_DIRECT_DESC:Ljava/lang/String; = "\u5f3a\u5236\u76f4\u8fde"

.field public static final SPEED_GETACCELERATORFAILED:I = -0x191

.field private static final SPEED_GETACCELERATORFAILED_DESC:Ljava/lang/String; = "\u83b7\u53d6\u52a0\u901f\u534f\u8bae\u5931\u8d25"

.field public static final SPEED_HOOKFAILED:I = -0x5

.field private static final SPEED_HOOKFAILED_DESC:Ljava/lang/String; = "hook\u5931\u8d25"

.field public static final SPEED_HOOKNOTSUPPORT:I = -0xd

.field private static final SPEED_HOOKNOTSUPPORT_DESC:Ljava/lang/String; = "hook\u4e0d\u652f\u6301"

.field public static final SPEED_JVMFAILED:I = -0x1

.field private static final SPEED_JVMFAILED_DESC:Ljava/lang/String; = "\u521d\u59cb\u5316\u65f6\u83b7\u53d6JVM\u5931\u8d25"

.field public static final SPEED_LOADFAILED:I = -0x7

.field private static final SPEED_LOADFAILED_DESC:Ljava/lang/String; = "\u6ca1\u6709\u6210\u529f\u52a0\u8f7dso\u5e93"

.field public static final SPEED_MASTERFAILED:I = -0xb

.field private static final SPEED_MASTERFAILED_DESC:Ljava/lang/String; = "\u8bf7\u6c42\u8c03\u5ea6\u5931\u8d25"

.field public static final SPEED_NEGFAILED:I = -0xc

.field private static final SPEED_NEGFAILED_DESC:Ljava/lang/String; = "\u8bf7\u6c42\u534f\u5546\u5931\u8d25"

.field public static final SPEED_NONEED:I = 0x2

.field private static final SPEED_NONEED_DESC:Ljava/lang/String; = "\u65e0\u9700\u5f00\u542f\u52a0\u901f"

.field public static final SPEED_NONETOR2G:I = -0x2

.field private static final SPEED_NONETOR2G_DESC:Ljava/lang/String; = "Unknown/2G\u6216\u8005\u65e0\u7f51\u7edc"

.field public static final SPEED_NOTREACH:I = -0x4

.field private static final SPEED_NOTREACH_DESC:Ljava/lang/String; = "\u672a\u8fbe\u5230\u52a0\u901f\u6761\u4ef6"

.field public static final SPEED_STARTING:I = 0x1

.field private static final SPEED_STARTING_DESC:Ljava/lang/String; = "\u6b63\u5728\u6267\u884cstartSpeed"

.field public static final SPEED_STARTSPEEDTESTERTIMEOUT:I = -0xa

.field private static final SPEED_STARTSPEEDTESTERTIMEOUT_DESC:Ljava/lang/String; = "startSpeed\u6d4b\u901f\u9636\u6bb5\u8d85\u65f6"

.field public static final SPEED_STARTSPEEDTREQTIMEOUT:I = -0x9

.field private static final SPEED_STARTSPEEDTREQTIMEOUT_DESC:Ljava/lang/String; = "startSpeed\u8bf7\u6c42\u9636\u6bb5\u8d85\u65f6"

.field public static final SPEED_SUCCEED:I = 0x0

.field private static final SPEED_SUCCEED_DESC:Ljava/lang/String; = "\u6210\u529f"

.field public static final SPEED_THROWABLE:I = -0x193

.field private static final SPEED_THROWABLE_DESC:Ljava/lang/String; = "\u52a0\u901f\u9519\u8bef"


# instance fields
.field public desc:Ljava/lang/String;

.field public flag:I

.field public htype:I

.field public vip:Ljava/lang/String;

.field public vport:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6

    const/4 v4, -0x1

    .line 1
    const-string/jumbo v5, "\u521d\u59cb\u5316\u65f6\u83b7\u53d6JVM\u5931\u8d25"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mna/StartSpeedRet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/tencent/mna/StartSpeedRet;->vip:Ljava/lang/String;

    .line 13
    iput p2, p0, Lcom/tencent/mna/StartSpeedRet;->vport:I

    .line 14
    iput p3, p0, Lcom/tencent/mna/StartSpeedRet;->htype:I

    .line 15
    iput p4, p0, Lcom/tencent/mna/StartSpeedRet;->flag:I

    .line 16
    iput-object p5, p0, Lcom/tencent/mna/StartSpeedRet;->desc:Ljava/lang/String;

    return-void
.end method

.method public static getSpeedDesc(I)Ljava/lang/String;
    .locals 1

    const/16 v0, -0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 1
    const-string p0, ""

    goto :goto_0

    .line 61
    :pswitch_0
    const-string/jumbo p0, "\u83b7\u53d6\u52a0\u901f\u534f\u8bae\u5931\u8d25"

    goto :goto_0

    .line 64
    :pswitch_1
    const-string/jumbo p0, "\u52a0\u901f\u5f02\u5e38"

    goto :goto_0

    .line 67
    :pswitch_2
    const-string/jumbo p0, "\u52a0\u901f\u9519\u8bef"

    goto :goto_0

    .line 7
    :pswitch_3
    const-string/jumbo p0, "\u5bf9\u5c40\u4e2d\u52a0\u901f\u4e2d\u65ad"

    goto :goto_0

    .line 10
    :pswitch_4
    const-string/jumbo p0, "\u65e0\u9700\u5f00\u542f\u52a0\u901f"

    goto :goto_0

    .line 13
    :pswitch_5
    const-string/jumbo p0, "\u6b63\u5728\u6267\u884cstartSpeed"

    goto :goto_0

    .line 16
    :pswitch_6
    const-string/jumbo p0, "\u6210\u529f"

    goto :goto_0

    .line 19
    :pswitch_7
    const-string/jumbo p0, "\u521d\u59cb\u5316\u65f6\u83b7\u53d6JVM\u5931\u8d25"

    goto :goto_0

    .line 22
    :pswitch_8
    const-string p0, "Unknown/2G\u6216\u8005\u65e0\u7f51\u7edc"

    goto :goto_0

    .line 25
    :pswitch_9
    const-string/jumbo p0, "\u8bf7\u6c42\u4e2d\u63a7\u5931\u8d25"

    goto :goto_0

    .line 28
    :pswitch_a
    const-string/jumbo p0, "\u672a\u8fbe\u5230\u52a0\u901f\u6761\u4ef6"

    goto :goto_0

    .line 31
    :pswitch_b
    const-string p0, "hook\u5931\u8d25"

    goto :goto_0

    .line 34
    :pswitch_c
    const-string p0, "GameServer DNS\u8bf7\u6c42\u5931\u8d25"

    goto :goto_0

    .line 37
    :pswitch_d
    const-string/jumbo p0, "\u6ca1\u6709\u6210\u529f\u52a0\u8f7dso\u5e93"

    goto :goto_0

    .line 40
    :pswitch_e
    const-string/jumbo p0, "\u4e2d\u63a7\u57df\u540dDNS\u8bf7\u6c42\u5931\u8d25"

    goto :goto_0

    .line 43
    :pswitch_f
    const-string/jumbo p0, "startSpeed\u8bf7\u6c42\u9636\u6bb5\u8d85\u65f6"

    goto :goto_0

    .line 46
    :pswitch_10
    const-string/jumbo p0, "startSpeed\u6d4b\u901f\u9636\u6bb5\u8d85\u65f6"

    goto :goto_0

    .line 49
    :pswitch_11
    const-string/jumbo p0, "\u8bf7\u6c42\u8c03\u5ea6\u5931\u8d25"

    goto :goto_0

    .line 52
    :pswitch_12
    const-string/jumbo p0, "\u8bf7\u6c42\u534f\u5546\u5931\u8d25"

    goto :goto_0

    .line 55
    :pswitch_13
    const-string p0, "hook\u4e0d\u652f\u6301"

    goto :goto_0

    .line 68
    :cond_0
    const-string p0, "AB\u6d4b\u8bd5\u9009\u62e9\u4e0d\u52a0\u901f"

    goto :goto_0

    .line 122
    :cond_1
    const-string/jumbo p0, "\u5f3a\u5236\u76f4\u8fde"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch -0x193
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0xd
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static isCanHook(I)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/tencent/mna/StartSpeedRet;->isRequestControlSucceed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x191

    if-eq p0, v0, :cond_0

    const/4 v0, -0x5

    if-eq p0, v0, :cond_0

    const/16 v0, -0xd

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNegotiateForwardTunnelSucceed(I)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/tencent/mna/StartSpeedRet;->isRequestControlSucceed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x191

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/16 v0, -0xb

    if-eq p0, v0, :cond_0

    const/16 v0, -0xc

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRequestControlSucceed(I)Z
    .locals 1

    const/16 v0, -0x192

    if-eq p0, v0, :cond_0

    const/16 v0, -0x193

    if-eq p0, v0, :cond_0

    const/4 v0, -0x7

    if-eq p0, v0, :cond_0

    const/4 v0, -0x2

    if-eq p0, v0, :cond_0

    const/4 v0, -0x6

    if-eq p0, v0, :cond_0

    const/4 v0, -0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSpeedSucceed(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
