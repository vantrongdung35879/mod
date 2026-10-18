.class public interface abstract annotation Lcom/beetalk/sdk/networking/ResponseError;
.super Ljava/lang/Object;
.source "ResponseError.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/networking/ResponseError$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0008\u0002\u0008\u0087\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002B\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/beetalk/sdk/networking/ResponseError;",
        "",
        "Companion",
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

.annotation runtime Lkotlin/annotation/Target;
    allowedTargets = {
        .enum Lkotlin/annotation/AnnotationTarget;->FUNCTION:Lkotlin/annotation/AnnotationTarget;,
        .enum Lkotlin/annotation/AnnotationTarget;->PROPERTY:Lkotlin/annotation/AnnotationTarget;,
        .enum Lkotlin/annotation/AnnotationTarget;->VALUE_PARAMETER:Lkotlin/annotation/AnnotationTarget;,
        .enum Lkotlin/annotation/AnnotationTarget;->LOCAL_VARIABLE:Lkotlin/annotation/AnnotationTarget;
    }
.end annotation


# static fields
.field public static final CPF_LIMIT_REACHED:Ljava/lang/String; = "cpf_limit_reached"

.field public static final Companion:Lcom/beetalk/sdk/networking/ResponseError$Companion;

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

    sget-object v0, Lcom/beetalk/sdk/networking/ResponseError$Companion;->$$INSTANCE:Lcom/beetalk/sdk/networking/ResponseError$Companion;

    sput-object v0, Lcom/beetalk/sdk/networking/ResponseError;->Companion:Lcom/beetalk/sdk/networking/ResponseError$Companion;

    return-void
.end method
