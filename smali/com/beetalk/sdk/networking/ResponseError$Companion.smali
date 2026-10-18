.class public final Lcom/beetalk/sdk/networking/ResponseError$Companion;
.super Ljava/lang/Object;
.source "ResponseError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/networking/ResponseError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/beetalk/sdk/networking/ResponseError$Companion;",
        "",
        "()V",
        "CPF_LIMIT_REACHED",
        "",
        "ERROR_OPEN_ID",
        "ERROR_PARAM",
        "ERROR_PARAMS",
        "ERROR_SERVER",
        "ERROR_TOKEN",
        "ERROR_UNAUTHENTICATED",
        "INVALID_CONFIG",
        "INVALID_TOKEN",
        "NOT_FOUND",
        "NO_POLICY_REGION",
        "PERMISSION_DENIED",
        "RESOURCE_EXHAUSTED",
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
.field static final synthetic $$INSTANCE:Lcom/beetalk/sdk/networking/ResponseError$Companion;

.field public static final CPF_LIMIT_REACHED:Ljava/lang/String; = "cpf_limit_reached"

.field public static final ERROR_OPEN_ID:Ljava/lang/String; = "error_open_id"

.field public static final ERROR_PARAM:Ljava/lang/String; = "error_param"

.field public static final ERROR_PARAMS:Ljava/lang/String; = "error_params"

.field public static final ERROR_SERVER:Ljava/lang/String; = "error_server"

.field public static final ERROR_TOKEN:Ljava/lang/String; = "error_token"

.field public static final ERROR_UNAUTHENTICATED:Ljava/lang/String; = "error_unauthenticated"

.field public static final INVALID_CONFIG:Ljava/lang/String; = "error_invalid_cfg"

.field public static final INVALID_TOKEN:Ljava/lang/String; = "invalid_token"

.field public static final NOT_FOUND:Ljava/lang/String; = "error_not_found"

.field public static final NO_POLICY_REGION:Ljava/lang/String; = "error_no_policy_region"

.field public static final PERMISSION_DENIED:Ljava/lang/String; = "error_permission_denied"

.field public static final RESOURCE_EXHAUSTED:Ljava/lang/String; = "error_resource_exhausted"

.field public static final UNAUTHENTICATED:Ljava/lang/String; = "unauthenticated"

.field public static final UNKNOWN:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/networking/ResponseError$Companion;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/ResponseError$Companion;-><init>()V

    sput-object v0, Lcom/beetalk/sdk/networking/ResponseError$Companion;->$$INSTANCE:Lcom/beetalk/sdk/networking/ResponseError$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
