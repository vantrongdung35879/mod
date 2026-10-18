.class public final Lcom/beetalk/sdk/networking/ResponseCode$Companion;
.super Ljava/lang/Object;
.source "ResponseCode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/networking/ResponseCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/beetalk/sdk/networking/ResponseCode$Companion;",
        "",
        "()V",
        "ERROR_PARAM",
        "",
        "ERROR_SERVER",
        "NOT_FOUND",
        "PERMISSION_DENIED",
        "RESOURCE_EXHAUSTED",
        "SUCCESS",
        "UNAUTHENTICATED",
        "UNKNOWN",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/beetalk/sdk/networking/ResponseCode$Companion;

.field public static final ERROR_PARAM:I = 0x3ea

.field public static final ERROR_SERVER:I = 0x3e9

.field public static final NOT_FOUND:I = 0x3ed

.field public static final PERMISSION_DENIED:I = 0x3ec

.field public static final RESOURCE_EXHAUSTED:I = 0x3ee

.field public static final SUCCESS:I = 0x0

.field public static final UNAUTHENTICATED:I = 0x3eb

.field public static final UNKNOWN:I = -0x3e8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/networking/ResponseCode$Companion;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/ResponseCode$Companion;-><init>()V

    sput-object v0, Lcom/beetalk/sdk/networking/ResponseCode$Companion;->$$INSTANCE:Lcom/beetalk/sdk/networking/ResponseCode$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
