.class public Lcom/tdatamaster/tdm/device/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_UNKNOWN_BOOL_VALUE:Z = false

.field public static final DEFAULT_UNKNOWN_LONG_VALUE:J = -0x1L

.field public static final DEFAULT_UNKNOWN_STRING_VALUE:Ljava/lang/String; = "Unknown"


# instance fields
.field public name:Ljava/lang/String;

.field public status:I

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    .line 20
    iput p2, p0, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfo;->name:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/tdatamaster/tdm/device/DeviceInfo;->value:Ljava/lang/Object;

    .line 15
    iput p3, p0, Lcom/tdatamaster/tdm/device/DeviceInfo;->status:I

    return-void
.end method
