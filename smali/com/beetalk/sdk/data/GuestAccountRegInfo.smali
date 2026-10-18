.class public Lcom/beetalk/sdk/data/GuestAccountRegInfo;
.super Ljava/lang/Object;
.source "GuestAccountRegInfo.java"


# instance fields
.field public final password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {}, Lcom/beetalk/sdk/helper/Security;->generate64charpassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/data/GuestAccountRegInfo;->password:Ljava/lang/String;

    return-void
.end method
